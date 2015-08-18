#################################################################################################
##  This script merges the activity, subject, train and test data from the dataset
## found in https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
##  It extracts the columns refering to mean and standard deviation values. Then it formats the 
## columns names into a more readable style. Finally performs a mean on the resulting dataset 
## by grouping by activity and subject.
##  In order to run this script it should be copied into the extracted folder "UCI HAR Dataset"
## from the base dataset given in the URL. Then execute :
##  source("run_analysis.R")
##  final_data<-submit()
#################################################################################################

#-----------------------------------------------------
#This funtion formats the name into a more readable one
#------------------------------------------------------
formatTitle<-function(text){ 
  baseText<-as.character(text);
  sensor<-""
  object<-""
  axis<-""
  operation<-""
  jerk<-""
  mag<-""
  fourier<-""
  if(length(grep("Acc",baseText))){
    sensor<-"Acceleration"
  }else if(length(grep("Gyro",baseText))){
    sensor<-"AngularVelocity"
  }  
  
  if(length(grep("BodyBody|Body",baseText))){
    object<-"Body"
  }else if(length(grep("Gravity",baseText))){
    object<-"Gravity"
  }else if(length(grep("activity|subject",baseText))){
    object<-baseText
  }
    
  if(length(grep("X$",baseText))){
    axis<-"X_Axis"
  }else if(length(grep("Y$",baseText))){
    axis<-"Y_Axis"
  }else if(length(grep("Z$",baseText))){
    axis<-"Z_Axis"
  }
  
  if(length(grep("Mag",baseText))){
    mag<-"Magnitud"
  }
  if(length(grep("Jerk",baseText))){
    jerk<-"Jerk"
  }
  
  if(length(grep("mean",baseText))){
    operation<-"Mean"
  }else if(length(grep("std",baseText))){
    operation<-"StandardDeviation"
  }
  
  if(length(grep("^f",baseText))){
    fourier<-"fourier"
  }
 
  paste0(fourier,object,axis,jerk,sensor,mag,operation)
}

#---------------------------------------------
#  This funtion is the main entry to the script
# performs the loading, merging, filtering, 
# formating and sumarizing of the data.
#--------------------------------------------
submit<-function(){
library(dplyr)
##Load headers and activities
header<-read.table("features.txt", sep = " ")
activity<-read.table("activity_labels.txt", sep = " ")

## Load test data. The data used doesn't include the inertial folders
##since this data is no useful for the rest of the process, as
##explained in forum: (https://class.coursera.org/getdata-031/forum/thread?thread_id=28)
#Activity per row
activity_test<-read.table("test/y_test.txt",col.names = c("activity"))
#List of test subjects
subjects_test<-read.table("test/subject_test.txt",col.names = c("subject"))
#test dataset
print("Loading test data, please wait ..")
raw_test<-read.table("test/X_test.txt", col.names = header[,2])
#Add activity and subjects to test dataset
raw_test<-cbind(activity_test,subjects_test,raw_test)


##Load train data
#Activity per row
activity_train<-read.table("train/y_train.txt",col.names = c("activity"))
#List of train subjects
subjects_train<-read.table("train/subject_train.txt",col.names = c("subject"))
#test dataset
print("Loading train data, please wait ..")
raw_train<-read.table("train/X_train.txt", col.names = header[,2] )
#Add activity and subjects to train dataset
raw_train<-cbind(activity_train,subjects_train,raw_train)

#######################################################################
####  STEP 1 -Merge the training and the test sets to create 
#### one data set.
####################################################################
##Merge Test and Train
print("Merging train and test data, please wait ..")
raw_total<-rbind(raw_test, raw_train)

#######################################################################
####  STEP 2 - Extracts only the measurements on the mean and 
#### standard deviation
####################################################################

##filter data
# Get the columns that has a mean or standard deviation feature
#additionally  will extract the activity and subject column
mean_std_headers<-grep("mean\\W|std\\W|activity|subject",names(raw_total))
#Select only those columns that has std or mean from the dataset
print("Filtering data, please wait ..")
filter_data<-select(raw_total, mean_std_headers)

#######################################################################
####  STEP 3 -Use descriptive activity names to name the activities 
#### in the data set
####################################################################
#replace the activity column value by its name found in "activity_labels.txt"
filter_data$activity<-sapply(filter_data$activity,function(x){activity[x,2]})


#######################################################################
####  STEP 4 -Appropriately labels the data set with descriptive 
#### variable names. 
####################################################################
#extract names
base_names<-names(filter_data)
#apply format rules to each name
new_names<-sapply(base_names,formatTitle)
#rename columns
colnames(filter_data)<-new_names

#######################################################################
####  STEP 5 - From the data set in step 4, creates a second, 
#### independent tidy data set with the average of each variable 
#### for each activity and each subject.
####################################################################
#set the groupings for the average operations
#Create a summary to calculate the mean of each column
final_data <-filter_data %>% group_by(activity,subject) %>%
summarise_each( funs(mean))
print("Process done")

final_data

}
