#CodeBook 
##Dataset origin

The data contained was originated from an experiment, where 30 subjects using a smartphone with sensors (accelerometer and gyroscope), underwent a set of activities. The measures are collected from each sensor for every axis (X, Y and Z). Additionally operations and transformations are made over the obtained measures.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  
The base dataset obtained from the previous experiment is located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Dataset handling

  From the previous dataset it is required to extract the information regarding mean values and standard deviation values. MeanFreq value is not included, since is a weighted average. The information about activity and subject is preserved for each observation.
  The resulting dataset is processed to obtain a tidy dataset, so that the column names are in more readable format.

##Data descritption
| Column | Description          |
| ------------- | ----------- |
| **activity**      | The Activity performed by the subject while taking the measurements.<br/>The possible values are:<br/><ul><li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li> |
|**subject**|This column indicates the subject id or the persong number included in the test|
|**BodyX_AxisAccelerationMean**|This is the mean value obtained from the Accelerometer regarding the X axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyY_AxisAccelerationMean**|This is the mean value obtained from the Accelerometer regarding the Y axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyZ_AxisAccelerationMean**|This is the mean value obtained from the Accelerometer regarding the Z axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
| Close     | Closes a window     |





BodyX_AxisAccelerationStandardDeviation
BodyY_AxisAccelerationStandardDeviation
BodyZ_AxisAccelerationStandardDeviation
GravityX_AxisAccelerationMean
GravityY_AxisAccelerationMean
GravityZ_AxisAccelerationMean
GravityX_AxisAccelerationStandardDeviation
GravityY_AxisAccelerationStandardDeviation
GravityZ_AxisAccelerationStandardDeviation
BodyX_AxisJerkAccelerationMean
BodyY_AxisJerkAccelerationMean
BodyZ_AxisJerkAccelerationMean
BodyX_AxisJerkAccelerationStandardDeviation
BodyY_AxisJerkAccelerationStandardDeviation
BodyZ_AxisJerkAccelerationStandardDeviation
BodyX_AxisRotationMean
BodyY_AxisRotationMean
BodyZ_AxisRotationMean
BodyX_AxisRotationStandardDeviation
BodyY_AxisRotationStandardDeviation
BodyZ_AxisRotationStandardDeviation
BodyX_AxisJerkRotationMean
BodyY_AxisJerkRotationMean
BodyZ_AxisJerkRotationMean
BodyX_AxisJerkRotationStandardDeviation
BodyY_AxisJerkRotationStandardDeviation
BodyZ_AxisJerkRotationStandardDeviation
BodyAccelerationMagnitudMean
BodyAccelerationMagnitudStandardDeviation
GravityAccelerationMagnitudMean
GravityAccelerationMagnitudStandardDeviation
BodyJerkAccelerationMagnitudMean
BodyJerkAccelerationMagnitudStandardDeviation
BodyRotationMagnitudMean
BodyRotationMagnitudStandardDeviation
BodyJerkRotationMagnitudMean
BodyJerkRotationMagnitudStandardDeviation
fourierBodyX_AxisAccelerationMean
fourierBodyY_AxisAccelerationMean
fourierBodyZ_AxisAccelerationMean
fourierBodyX_AxisAccelerationStandardDeviation
fourierBodyY_AxisAccelerationStandardDeviation
fourierBodyZ_AxisAccelerationStandardDeviation
fourierBodyX_AxisJerkAccelerationMean
fourierBodyY_AxisJerkAccelerationMean
fourierBodyZ_AxisJerkAccelerationMean
fourierBodyX_AxisJerkAccelerationStandardDeviation
fourierBodyY_AxisJerkAccelerationStandardDeviation
fourierBodyZ_AxisJerkAccelerationStandardDeviation
fourierBodyX_AxisRotationMean
fourierBodyY_AxisRotationMean
fourierBodyZ_AxisRotationMean
fourierBodyX_AxisRotationStandardDeviation
fourierBodyY_AxisRotationStandardDeviation
fourierBodyZ_AxisRotationStandardDeviation
fourierBodyAccelerationMagnitudMean
fourierBodyAccelerationMagnitudStandardDeviation
fourierBodyJerkAccelerationMagnitudMean
fourierBodyJerkAccelerationMagnitudStandardDeviation
fourierBodyRotationMagnitudMean
fourierBodyRotationMagnitudStandardDeviation
fourierBodyJerkRotationMagnitudMean
fourierBodyJerkRotationMagnitudStandardDeviation
