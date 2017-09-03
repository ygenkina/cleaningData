# Variable Description (All avalable vars)

As per the assignment requirement only the measurements on the mean and standard deviation for each measurement are included in the final output.

After r_analysis.R is run all original data is stored in the following data frames:

* testData

* trainData

* testParticipants

* trainParticipants

* testLabels, *which stands for activity labels*

* trainLabels, *which stands for activity labels*

* measureLabels

##### measureLabels Info

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ

* tGravityAcc-XYZ

* tBodyAccJerk-XYZ

* tBodyGyro-XYZ

* tBodyGyroJerk-XYZ

* tBodyAccMag

* tGravityAccMag

* tBodyAccJerkMag

* tBodyGyroMag

* tBodyGyroJerkMag

* fBodyAcc-XYZ

* fBodyAccJerk-XYZ

* fBodyGyro-XYZ

* fBodyAccMag

* fBodyAccJerkMag

* fBodyGyroMag

* fBodyGyroJerkMag

The set of variables that were estimated from these signals and included in the final output are: 

* mean(): Mean value

* std(): Standard deviation

* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean

* tBodyAccMean

* tBodyAccJerkMean

* tBodyGyroMean

* tBodyGyroJerkMean

-------------------
#Output data sets

**onlyAvrSTD** is the tidy data containing all the necessary labels and variables

**summaryData** is the tidy data containing the average of each variable for each activity and each subject.

 

