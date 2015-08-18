# Getting and Cleaning Data Course Project

 The pupose of this project is to get, merge and format data from the measures from accelerometers and gyroscopes. The measures comes from a group of 30 individuals doing a set of activities.
 
 The original project inforamtion is located in :
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
##Data extraction and formating explanation
 Datasets from train and test folders are merged in to a dataset, also the information about the activity and subject are merged to the corresponding rows.

 For this project all the columns containing information regarding the **mean** and **standard deviation** are extracted from the original data set. The columns refering to **meanFreq** (mean frequency) are excluded since they refer to a weighted average.
 
 The columns names are reformated to create more readable names using the following rules:
 
  - **Acc** turns to Acceleration, since it is really the measure obtained from the accelerometer
  - **Gyro** turns to AngularVelocity, since it is the measure obtained from the Gyroscope
  - prefix **f** turns to fourier, since this describes the process given to the current column
  - **mean()** turns to Mean
  - **std()** turns to Standard Deviation
  - **jerk** turns to Jerk
  - **Mag** turns to Magnitude
  - **X** turns to X_Axis
  - **Y** turns to Y_Axis
  - **Z** turns to Z_Axis
  - **Body** and **Gravity** remains the same
  - prefix **t** is ignored, since default measures are time based
   
The names are formed using **Camel Case** style, in order to improve the readability
 
##Script execution 
The project uses an R script named "run_analysis.R", located in this repository. The script is develped using R V 3.1.3 in a windows 7 computer. The script relies on the library **dplyr** if not installed please execute the following comman in R shel:
 ```sh
install.packages("dplyr")
```

In order to run the project the following steps are needed:

  - Download the measurements dataset from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
  - Unzip the downloaded dataset file "getdata-projectfiles-UCI HAR Dataset.zip" in any folder
  - Copy the R script "run_analysis.R" inside the extracted folder "UCI HAR Dataset"
  - Open and R terminal or R studio
  - exceute the following commands
  - 
  ```sh
  #replace path_where_dataset_was_extracted with the actual folder path
  
  path<-"path_where_dataset_was_extracted/UCI HAR Dataset"
  
  setwd(path)
  
  source("run_analysis.R")
  
  submit()
  
  ```
  If you want to created the resulting dataset **result.txt**, after executing the above script, please execute the following:
```sh
#Replace desired_path by a path wher you want to store the file
 write.table(file="desired_path/result.txt",final_data, row.names=F)
```  
##Dataset loading  
  If you want to load the the given dataset, doanload to a path in your computer and execute:
```sh
#Replace path_where_the_dataset_file_was_downloaded with the actual path
final_data<-read.table("path_where_the_dataset_file_was_downloaded/result.txt")
```  
  
  If you are running R from Rstudio you could easily visualize the resulting data by executing in the shell:
  
```sh
View(final_data)
```
If you are not in Rstudio, you can still visualize the data by saving it as csv (a little more readable format), so you can read it using a text editor or Excel:

```sh
#Replace desired_path by a path wher you want to store the file
 write.csv(file="desired_path/result.csv",final_data, row.names=F)
```


