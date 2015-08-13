# Getting and Cleaning Data Course Project

 The pupose of this project is to get, merge and format data from the measures from accelerometers and gyroscopes. The measures comes from a group of 30 individuals doing a set of activities.
 
 The original project inforamtion is located in :
   http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
   
The project uses an R script named "run_analysis.R", located in this repository. In order to run the project the following steps are needed:

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
