#CodeBook 
##Dataset origin

The data contained was originated from an experiment, where 30 subjects using a smartphone with sensors (accelerometer and gyroscope), underwent a set of activities. The measures are collected from each sensor for every axis (X, Y and Z). Additionally operations and transformations are made over the obtained measures.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  
The base dataset obtained from the previous experiment is located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Dataset handling and transformation

  From the previous dataset it is required to extract the information regarding mean values and standard deviation values. MeanFreq value is not included, since is a weighted average. The information about activity and subject is preserved for each observation.
  The resulting dataset is processed to obtain a tidy dataset, so that the column names are in more readable format.

##Data descritption
| Column | Description          |
| ------------- | ----------- |
| **activity**      | The Activity performed by the subject while taking the measurements.<br/>The possible values are:<br/><ul><li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li> |
|**subject**|This column indicates the subject id or the persong number included in the test|
|**BodyX_AxisAccelerationMean**|This is the mean value due to the subject activity obtained from the Accelerometer regarding the X axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyY_AxisAccelerationMean**|This is the mean value due to the subject activity obtained from the Accelerometer regarding the Y axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyZ_AxisAccelerationMean**|This is the mean value due to the subject activity obtained from the Accelerometer regarding the Z axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyX_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the subject activity obtained from the Accelerometer regarding the X axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyY_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the subject activity obtained from the Accelerometer regarding the Y axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyZ_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the subject activity obtained from the Accelerometer regarding the Z axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityX_AxisAccelerationMean**|This is the mean value due to the gravity obtained from the Accelerometer regarding the X axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityY_AxisAccelerationMean**|This is the mean value due to the gravity obtained from the Accelerometer regarding the Y axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityZ_AxisAccelerationMean**|This is the mean value due to the gravity obtained from the Accelerometer regarding the Z axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityX_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the gravity obtained from the Accelerometer regarding the X axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityY_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the gravity obtained from the Accelerometer regarding the Y axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**GravityZ_AxisAccelerationStandardDeviation**|This is the standard deviation value due to the gravity obtained from the Accelerometer regarding the Z axis for a given activity executed by one subject. The measurement is an acceleration is given in m/s^2|
|**BodyX_AxisJerkAccelerationMean**|This is the mean value due to the subject activity obtained from the derivation of the acceleration regarding the X axis for a given activity executed by one subject. The measurement is given in m/s^3|
|**BodyY_AxisJerkAccelerationMean**|This is the mean value due to the subject activity obtained from the derivation of the acceleration regarding the Y axis for a given activity executed by one subject. The measurement is given in m/s^3|
|**BodyZ_AxisJerkAccelerationMean**|This is the mean value due to the subject activity obtained from the derivation of the acceleration regarding the Y axis for a given activity executed by one subject. The measurement is given in m/s^3|
| Close     | Closes a window     |





BodyX_AxisJerkAccelerationStandardDeviation
BodyY_AxisJerkAccelerationStandardDeviation
BodyZ_AxisJerkAccelerationStandardDeviation
BodyX_AxisAngularVelocityMean
BodyY_AxisAngularVelocityMean
BodyZ_AxisAngularVelocityMean
BodyX_AxisAngularVelocityStandardDeviation
BodyY_AxisAngularVelocityStandardDeviation
BodyZ_AxisAngularVelocityStandardDeviation
BodyX_AxisJerkAngularVelocityMean
BodyY_AxisJerkAngularVelocityMean
BodyZ_AxisJerkAngularVelocityMean
BodyX_AxisJerkAngularVelocityStandardDeviation
BodyY_AxisJerkAngularVelocityStandardDeviation
BodyZ_AxisJerkAngularVelocityStandardDeviation
BodyAccelerationMagnitudMean
BodyAccelerationMagnitudStandardDeviation
GravityAccelerationMagnitudMean
GravityAccelerationMagnitudStandardDeviation
BodyJerkAccelerationMagnitudMean
BodyJerkAccelerationMagnitudStandardDeviation
BodyAngularVelocityMagnitudMean
BodyAngularVelocityMagnitudStandardDeviation
BodyJerkAngularVelocityMagnitudMean
BodyJerkAngularVelocityMagnitudStandardDeviation
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
fourierBodyX_AxisAngularVelocityMean
fourierBodyY_AxisAngularVelocityMean
fourierBodyZ_AxisAngularVelocityMean
fourierBodyX_AxisAngularVelocityStandardDeviation
fourierBodyY_AxisAngularVelocityStandardDeviation
fourierBodyZ_AxisAngularVelocityStandardDeviation
fourierBodyAccelerationMagnitudMean
fourierBodyAccelerationMagnitudStandardDeviation
fourierBodyJerkAccelerationMagnitudMean
fourierBodyJerkAccelerationMagnitudStandardDeviation
fourierBodyAngularVelocityMagnitudMean
fourierBodyAngularVelocityMagnitudStandardDeviation
fourierBodyJerkAngularVelocityMagnitudMean
fourierBodyJerkAngularVelocityMagnitudStandardDeviation

