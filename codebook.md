#DATA DICTIONARY for the tidy data set.

##Subject
* Number from 1-30 representing the subject/volunteers for the experiment.

##Activity
* These are the activities performed by each person/subject
	* WALKING
	* WALKING_UPSTAIRS
	* WALKING_DOWNSTAIRS
	* SITTING
	* STANDING
	* LAYING

#- The following 66 variables/columns are the average measurements on the mean and standard deviation measurements for each activity performed by the subjects.

#- The set of variables that were estimated from these signals are:
mean(): Mean value

std(): Standard deviation:

#- Notes: Units of measurement

Features are normalized and bounded within [-1,1].

#- Time domain signal features

##tBodyAcc-mean()-X

The mean body acceleration signal from the smartphone accelerometer X axis.

##tBodyAcc-mean()-Y

The mean body acceleration signal from the smartphone accelerometer Y axis.

##tBodyAcc-mean()-Z

The mean body acceleration signal from the smartphone accelerometer Z axis.

##tBodyAcc-std()-X

The standard deviation body acceleration signal obtained by subtracting the gravity from the total acceleration.

##tBodyAcc-std()-Y

The standard deviation body acceleration signal obtained by subtracting the gravity from the total acceleration.

##tBodyAcc-std()-Z

The standard deviation body acceleration signal obtained by subtracting the gravity from the total acceleration.

##tGravityAcc-mean()-X

The mean gravity acceleration signal from the smartphone accelerometer X axis.

##tGravityAcc-mean()-Y

The mean gravity acceleration signal from the smartphone accelerometer Y axis.

##tGravityAcc-mean()-Z

The mean gravity acceleration signal from the smartphone accelerometer Z axis.

##tGravityAcc-std()-X

The standard deviation gravity acceleration signal from the smartphone accelerometer X axis.

##tGravityAcc-std()-Y

The standard deviation gravity acceleration signal from the smartphone accelerometer X axis.

##tGravityAcc-std()-Z

The standard deviation gravity acceleration signal from the smartphone accelerometer Z axis.

##tBodyAccJerk-mean()-X

The mean body linear acceleration Jerk X signal.

##tBodyAccJerk-mean()-Y

The mean body linear acceleration Jerk Y signal.

##tBodyAccJerk-mean()-Z

The mean body linear acceleration Jerk Z signal.

##tBodyAccJerk-std()-X

The standard deviation body linear acceleration Jerk X signal.

##tBodyAccJerk-std()-Y

The standard deiation body linear acceleration Jerk Y signal.

##tBodyAccJerk-std()-Z

The standard deviation body linear acceleration Jerk Z signal.

##tBodyGyro-mean()-X

The mean angular velocity vector measured by the gyroscope for each window sample for X axis.

##tBodyGyro-mean()-Y

The mean angular velocity vector measured by the gyroscope for each window sample for Y axis.

##tBodyGyro-mean()-Z

The mean angular velocity vector measured by the gyroscope for each window sample for Z axis.

##tBodyGyro-std()-X

The standard deviation angular velocity vector measured by the gyroscope for each window sample for X axis.

##tBodyGyro-std()-Y

The standard deviation angular velocity vector measured by the gyroscope for each window sample for X axis.

##tBodyGyro-std()-Z

The standard deviation angular velocity vector measured by the gyroscope for each window sample for Z axis.

##tBodyGyroJerk-mean()-X

The mean angular velocity vector Jerk signal measured by the gyroscope for each window sample for X axis.

##tBodyGyroJerk-mean()-Y

The mean angular velocity vector Jerk signal measured by the gyroscope for each window sample for Y axis.

##tBodyGyroJerk-mean()-Z

The mean angular velocity vector Jerk signal measured by the gyroscope for each window sample for Z axis.

##tBodyGyroJerk-std()-X

The standard deviation angular velocity vector Jerk signal measured by the gyroscope for each window sample for X axis.

##tBodyGyroJerk-std()-Y

The standard deviation angular velocity vector Jerk signal measured by the gyroscope for each window sample for Y axis.

##tBodyGyroJerk-std()-Z

The standard deviation angular velocity vector Jerk signal measured by the gyroscope for each window sample for X axis.

##tBodyAccMag-mean()

The mean of the magnitude of the body accellaration signal calculated using the Euclidean norm.

##tBodyAccMag-std()

The standard deviation of the magnitude of the body accellaration signal calculated using the Euclidean norm.

##tGravityAccMag-mean()

The mean of the magnitude of the gravity accellaration signal calculated using the Euclidean norm.

##tGravityAccMag-std()

The standard deviation of the magnitude of the gravity accellaration signal calculated using the Euclidean norm.

##tBodyAccJerkMag-mean()

The mean of the magnitude of the body accellaration Jerk signal calculated using the Euclidean norm.

##tBodyAccJerkMag-std()

The standard deviation of the magnitude of the body accellaration Jerk signal calculated using the Euclidean norm.

##tBodyGyroMag-mean()

The mean of the magnitude of body angular velocity signal calculated using the Euclidean norm.

##tBodyGyroMag-std()

The standard deviation of the magnitude of the body angular velocity signal calculated using the Euclidean norm.

##tBodyGyroJerkMag-mean()

The mean of the magnitude of the body angular velocity signal calculated using the Euclidean norm.

##tBodyGyroJerkMag-std()

The standard deviation of the magnitude of the body angular velocity signal calculated using the Euclidean norm.

#- Frequency domain signal features

##fBodyAcc-mean()-X

The mean body acceleration signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyAcc-mean()-Y

The mean body acceleration signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyAcc-mean()-Z

The mean body acceleration signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyAcc-std()-X

The standard deviation body acceleration signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyAcc-std()-Y

The standard deviation body acceleration signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyAcc-std()-Z

The standard deviation body acceleration signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-mean()-X

The mean body acceleration Jerk signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-mean()-Y

The mean body acceleration Jerk signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-mean()-Z

The mean body acceleration Jerk signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-std()-X

The standard deviation body acceleration Jerk signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-std()-Y

The standard deviation body acceleration Jerk signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyAccJerk-std()-Z

The standard deviation body acceleration Jerk signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-mean()-X

The mean body angular velocity signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-mean()-Y

The mean body angular velocity signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-mean()-Z

The mean body angular velocity signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-std()-X

The standard deviation body angular velocity signal from the smartphone accelerometer X axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-std()-Y

The standard deviation body angular velocity signal from the smartphone accelerometer Y axis applied using the Fast Fourier Transform (FFT).

##fBodyGyro-std()-Z

The standard deviation body angular velocity signal from the smartphone accelerometer Z axis applied using the Fast Fourier Transform (FFT).

##fBodyAccMag-mean()

The mean body accelaration Magnitude signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyAccMag-std()

The standard deviation body acceleration Magnitude signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyAccJerkMag-mean()

The mean body accelaration Magnitude Jerk signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyAccJerkMag-std()

The standard deviation body accelaration Magnitude Jerk signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyGyroMag-mean()

The mean body angular velocity Magnitude signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyGyroMag-std()

The standard deviation body angular velocity Magnitude signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyGyroJerkMag-mean()

The mean body angular velocity Magnitude Jerk signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

##fBodyBodyGyroJerkMag-std()

The standard deviation body angular velocity Magnitude Jerk signal calculated using the Euclidean norm applied using the Fast Fourier Transform (FFT).

