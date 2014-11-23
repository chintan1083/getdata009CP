CodeBook of Tidy Data
========
This code file contains the description of the variables of the tidy data. 


The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

- tBodyAcc-XYZ
- tGravityAcc-XYZ
- tBodyAccJerk-XYZ
- tBodyGyro-XYZ
- tBodyGyroJerk-XYZ
- tBodyAccMag
- tGravityAccMag
- tBodyAccJerkMag
- tBodyGyroMag
- tBodyGyroJerkMag
- fBodyAcc-XYZ
- fBodyAccJerk-XYZ
- fBodyGyro-XYZ
- fBodyAccMag
- fBodyAccJerkMag
- fBodyGyroMag
- fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency

The details of all features present in the tidy data are as given below. The values in the tidy data fields mean_* are the mean of the values for each combination of subject and activity.

* subject: Subject of the experiment Values 1 to 30
* activity : Activity performed by the subject: Values 
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
* mean_tBodyAcc-mean()-Y 
* mean_tBodyAcc-mean()-X  
* mean_tBodyAcc-mean()-Z
* mean_tBodyAcc-std()-X
* mean_tBodyAcc-std()-Y
* mean_tBodyAcc-std()-Z
* mean_tGravityAcc-mean()-X
* mean_tGravityAcc-mean()-Y
* mean_tGravityAcc-mean()-Z
* mean_tGravityAcc-std()-X
* mean_tGravityAcc-std()-Y
* mean_tGravityAcc-std()-Z
* mean_tBodyAccJerk-mean()-X
* mean_tBodyAccJerk-mean()-Y
* mean_tBodyAccJerk-mean()-Z
* mean_tBodyAccJerk-std()-X
* mean_tBodyAccJerk-std()-Y
* mean_tBodyAccJerk-std()-Z
* mean_tBodyGyro-mean()-X
* mean_tBodyGyro-mean()-Y
* mean_tBodyGyro-mean()-Z
* mean_tBodyGyro-std()-X
* mean_tBodyGyro-std()-Y
* mean_tBodyGyro-std()-Z
* mean_tBodyGyroJerk-mean()-X
* mean_tBodyGyroJerk-mean()-Y
* mean_tBodyGyroJerk-mean()-Z
* mean_tBodyGyroJerk-std()-X
* mean_tBodyGyroJerk-std()-Y
* mean_tBodyGyroJerk-std()-Z
* mean_tBodyAccMag-mean()
* mean_tBodyAccMag-std()
* mean_tGravityAccMag-mean()
* mean_tGravityAccMag-std()
* mean_tBodyAccJerkMag-mean()
* mean_tBodyAccJerkMag-std()
* mean_tBodyGyroMag-mean()
* mean_tBodyGyroMag-std()
* mean_tBodyGyroJerkMag-mean()
* mean_tBodyGyroJerkMag-std()
* mean_fBodyAcc-mean()-X
* mean_fBodyAcc-mean()-Y
* mean_fBodyAcc-mean()-Z
* mean_fBodyAcc-std()-X
* mean_fBodyAcc-std()-Y
* mean_fBodyAcc-std()-Z
* mean_fBodyAcc-meanFreq()-X
* mean_fBodyAcc-meanFreq()-Y
* mean_fBodyAcc-meanFreq()-Z
* mean_fBodyAccJerk-mean()-X
* mean_fBodyAccJerk-mean()-Y
* mean_fBodyAccJerk-mean()-Z
* mean_fBodyAccJerk-std()-X
* mean_fBodyAccJerk-std()-Y
* mean_fBodyAccJerk-std()-Z
* mean_fBodyAccJerk-meanFreq()-X
* mean_fBodyAccJerk-meanFreq()-Y
* mean_fBodyAccJerk-meanFreq()-Z
* mean_fBodyGyro-mean()-X
* mean_fBodyGyro-mean()-Y
* mean_fBodyGyro-mean()-Z
* mean_fBodyGyro-std()-X
* mean_fBodyGyro-std()-Y
* mean_fBodyGyro-std()-Z
* mean_fBodyGyro-meanFreq()-X
* mean_fBodyGyro-meanFreq()-Y
* mean_fBodyGyro-meanFreq()-Z
* mean_fBodyAccMag-mean()
* mean_fBodyAccMag-std()
* mean_fBodyAccMag-meanFreq()
* mean_fBodyBodyAccJerkMag-mean()
* mean_fBodyBodyAccJerkMag-std()
* mean_fBodyBodyAccJerkMag-meanFreq()
* mean_fBodyBodyGyroMag-mean()
* mean_fBodyBodyGyroMag-std()
* mean_fBodyBodyGyroMag-meanFreq()
* mean_fBodyBodyGyroJerkMag-mean()
* mean_fBodyBodyGyroJerkMag-std()
* mean_fBodyBodyGyroJerkMag-meanFreq()




