#CodeBook 
##Dataset origin

The data contained was originated from an experiment, where 30 subjects using a smartphone with sensors (accelerometer and gyroscope), underwent a set of activities. The measures are collected from each sensor for every axis (X, Y and Z). Additionally operations and transformations are made over the obtained measures.

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 
  
The base dataset obtained from the previous experiment is located at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

##Dataset handling and transformation

  From the previous dataset it is required to extract the information regarding **mean** values and **standard deviation** values. **MeanFreq** value is **not included**, since is a weighted average. The information about activity and subject is preserved for each observation.
  
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
  
  The dataset is grouped by activity and subject, then it is calculated the mean for each resulting group. The resulting observations are 180 (6 activities executed by 30 subject).
  
  The resulting dataset is processed to obtain a tidy dataset, so that the column names are in more readable format. The dataset contains 68 columns and 180 rows (observations).
  From the original dataset an issue in the naming was fixed transforming BodyBody into just Body.
  
  

##Data descritption
| Column | Description          |
| ------------- | ----------- |
| **activity**      | The Activity performed by the subject while taking the measurements.<br/>The possible values are:<br/><ul><li>LAYING</li><li>SITTING</li><li>STANDING</li><li>WALKING</li><li>WALKING_DOWNSTAIRS</li><li>WALKING_UPSTAIRS</li> |
|**subject**|This column indicates the subject id or the persong number included in the test|
|**BodyX_AxisAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyY_AxisAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyZ_AxisAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyX_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyY_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyZ_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityX_AxisAccelerationMean**|This is the mean value  due to the gravity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityY_AxisAccelerationMean**|This is the mean value  due to the gravity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityZ_AxisAccelerationMean**|This is the mean value  due to the gravity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityX_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the gravity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityY_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the gravity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityZ_AxisAccelerationStandardDeviation**|This is the standard deviation value  due to the gravity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyX_AxisJerkAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the acceleration regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyY_AxisJerkAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the acceleration regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyZ_AxisJerkAccelerationMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the acceleration regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyX_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the acceleration regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyY_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the acceleration regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyZ_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the acceleration regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyX_AxisAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the Gyroscope regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyY_AxisAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the Gyroscope regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyZ_AxisAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the Gyroscope regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyX_AxisAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Gyroscope regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyY_AxisAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Gyroscope regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyZ_AxisAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Gyroscope regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyX_AxisJerkAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyY_AxisJerkAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyZ_AxisJerkAngularVelocityMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyX_AxisJerkAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyY_AxisJerkAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyZ_AxisJerkAngularVelocityStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the Angular velocity regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyAccelerationMagnitudMean**|This is the mean value  due to the subject activity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyAccelerationMagnitudStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityAccelerationMagnitudMean**|This is the mean value  due to the gravity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**GravityAccelerationMagnitudStandardDeviation**|This is the standard deviation value  due to the gravity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**BodyJerkAccelerationMagnitudMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the acceleration for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyJerkAccelerationMagnitudStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the acceleration for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**BodyAngularVelocityMagnitudMean**|This is the mean value  due to the subject activity. Obtained from the Gyroscope for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyAngularVelocityMagnitudStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the Gyroscope for a given activity executed by the subject.The measurement is given in rad/seconds|
|**BodyJerkAngularVelocityMagnitudMean**|This is the mean value  due to the subject activity. Obtained from the derivation of the Angular velocity for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**BodyJerkAngularVelocityMagnitudStandardDeviation**|This is the standard deviation value  due to the subject activity. Obtained from the derivation of the Angular velocity for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**fourierBodyX_AxisAccelerationMean**|This is the mean value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyY_AxisAccelerationMean**|This is the mean value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyZ_AxisAccelerationMean**|This is the mean value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyX_AxisAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyY_AxisAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyZ_AxisAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of acceleration due to the subject activity. Obtained from the Accelerometer regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyX_AxisJerkAccelerationMean**|This is the mean value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyY_AxisJerkAccelerationMean**|This is the mean value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyZ_AxisJerkAccelerationMean**|This is the mean value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyX_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the X axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyY_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the  Y axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyZ_AxisJerkAccelerationStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration regarding the Z axis for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyX_AxisAngularVelocityMean**|This is the mean value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyY_AxisAngularVelocityMean**|This is the mean value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyZ_AxisAngularVelocityMean**|This is the mean value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyX_AxisAngularVelocityStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the X axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyY_AxisAngularVelocityStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the  Y axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyZ_AxisAngularVelocityStandardDeviation**|This is the standard deviation value comming from the Fourier tranformation of angular velocity due to the subject activity. Obtained from the Gyroscope regarding the Z axis for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyAccelerationMagnitudMean**|This is the mean value comming from the Magnitud of the Fourier tranformation of the acceleration due to the subject activity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyAccelerationMagnitudStandardDeviation**|This is the standard deviation value comming from the Magnitud of the Fourier tranformation of the acceleration due to the subject activity. Obtained from the Accelerometer for a given activity executed by the subject. The measurement is an acceleration is given in g(gravity units)|
|**fourierBodyJerkAccelerationMagnitudMean**|This is the mean value comming from the Magnitud of the Fourier tranformation of the jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyJerkAccelerationMagnitudStandardDeviation**|This is the standard deviation value comming from the Magnitud of the Fourier tranformation of the jerk acceleration due to the subject activity. Obtained from the derivation of the acceleration for a given activity executed by the subject. The measurement is an acceleration is given in g/s(gravity units/seconds)|
|**fourierBodyAngularVelocityMagnitudMean**|This is the mean value comming from the Magnitud of the Fourier tranformation of the angular velocity due to the subject activity. Obtained from the Gyroscope for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyAngularVelocityMagnitudStandardDeviation**|This is the standard deviation value comming from the Magnitud of the Fourier tranformation of the angular velocity due to the subject activity. Obtained from the Gyroscope for a given activity executed by the subject.The measurement is given in rad/seconds|
|**fourierBodyJerkAngularVelocityMagnitudMean**|This is the mean value comming from the Magnitud of the Fourier tranformation of the jerk angular velocity due to the subject activity. Obtained from the derivation of the Angular velocity for a given activity executed by the subject.The measurement is given in rad/seconds^2|
|**fourierBodyJerkAngularVelocityMagnitudStandardDeviation**|This is the standard deviation value comming from the Magnitud of the Fourier tranformation of the jerk angular velocity due to the subject activity. Obtained from the derivation of the Angular velocity for a given activity executed by the subject.The measurement is given in rad/seconds^2|

