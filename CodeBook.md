#CodeBook 
##Dataset origin

The data contained was originated from an experiment, where 30 subjects using a smartphone with sensors (accelerometer and gyroscope), underwent a set of activities. The measures are collected from each sensor for every axis (X, Y and Z). Additionally operations and transformations are made over the obtained measures.

    http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  
The base dataset obtained from the previous experiment is located at:

    https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Dataset handling

  From the previous dataset it is required to extract the information regarding mean values and standard deviation values. MeanFreq value is not included, since is a weighted average. The information about activity and subject is preserved for each observation.
  The resulting dataset is processed to obtain a tidy dataset, so that the column names are in more readable format.
