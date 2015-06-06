The tidydat.txt data set is derived from the Samsung data set available here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data consists of a smartphone accelometer and gyroscope data from an experiment if which 30 volunteers performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. The smartphone accelerometer and gyroscope, captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.

The tidydat.txt data file consists of the means per subject (volunteer person) and activity type of 66 variables included in the original data. 

The variables are explained in the original codbook as follows:
***
"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

"Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

"Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

"These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."
***


The variables in the tidydat.rxt file are:
- activity: activity type. Value is one of [WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING]
- subject: the test subject (volunteer) identifier. Range 1:30.
- tBodyAcc-mean()-X: mean (per subject and activity) of the means of tBodyAcc measurements along X axis
- tBodyAcc-mean()-Y: mean (per subject and activity) of the means of tBodyAcc measurements along Y axis 
- tBodyAcc-mean()-Z: mean (per subject and activity) of the means of tBodyAcc measurements along X axis 
- tBodyAcc-std()-X: mean (per subject and activity) of the standard deviations of tBodyAcc measurements along X axis 
- tBodyAcc-std()-Y: mean (per subject and activity) of the standard deviations of tBodyAcc measurements along Y axis 
- tBodyAcc-std()-Z: mean (per subject and activity) of the standard deviations of tBodyAcc measurements along X axis 
- tGravityAcc-mean()-X: following the same pattern as above
- tGravityAcc-mean()-Y 
- tGravityAcc-mean()-Z 
- tGravityAcc-std()-X 
- tGravityAcc-std()-Y 
- tGravityAcc-std()-Z 
- tBodyAccJerk-mean()-X 
- tBodyAccJerk-mean()-Y
- tBodyAccJerk-mean()-Z 
- tBodyAccJerk-std()-X 
- tBodyAccJerk-std()-Y 
- tBodyAccJerk-std()-Z 
- tBodyGyro-mean()-X 
- tBodyGyro-mean()-Y 
- tBodyGyro-mean()-Z
- tBodyGyro-std()-X 
- tBodyGyro-std()-Y 
- tBodyGyro-std()-Z 
- tBodyGyroJerk-mean()-X 
- tBodyGyroJerk-mean()-Y 
- tBodyGyroJerk-mean()-Z 
- tBodyGyroJerk-std()-X
- tBodyGyroJerk-std()-Y 
- tBodyGyroJerk-std()-Z 
- tBodyAccMag-mean() 
- tBodyAccMag-std() 
- tGravityAccMag-mean() 
- tGravityAccMag-std() 
- tBodyAccJerkMag-mean()
- tBodyAccJerkMag-std() 
- tBodyGyroMag-mean() 
- tBodyGyroMag-std() 
- tBodyGyroJerkMag-mean() 
- tBodyGyroJerkMag-std() 
- fBodyAcc-mean()-X 
- fBodyAcc-mean()-Y
- fBodyAcc-mean()-Z 
- fBodyAcc-std()-X 
- fBodyAcc-std()-Y 
- fBodyAcc-std()-Z 
- fBodyAccJerk-mean()-X 
- fBodyAccJerk-mean()-Y 
- fBodyAccJerk-mean()-Z 
- fBodyAccJerk-std()-X
- fBodyAccJerk-std()-Y 
- fBodyAccJerk-std()-Z 
- fBodyGyro-mean()-X 
- fBodyGyro-mean()-Y 
- fBodyGyro-mean()-Z 
- fBodyGyro-std()-X 
- fBodyGyro-std()-Y 
- fBodyGyro-std()-Z
- fBodyAccMag-mean() 
- fBodyAccMag-std() 
- fBodyBodyAccJerkMag-mean() 
- fBodyBodyAccJerkMag-std() 
- fBodyBodyGyroMag-mean() 
- fBodyBodyGyroMag-std()
- fBodyBodyGyroJerkMag-mean() 
- fBodyBodyGyroJerkMag-std()


The R code used to produce this data set can be found in this repository in file called run_analysis.R
