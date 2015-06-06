
The tidydat.txt data set is derived from the Samsung data set available here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

A snippet from the original data description:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz."

The grouping variables in this tidydat.txt data are:
activity:  activity label, one of the following: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
subject: An identifier of the subject who carried out the experiment. Values between 1:30.

The rest 66 variables consist of the means of the variables from the original data set per activity and subject. Please refer to the original data description for a detailed description of the variables.

Briefly, the variables are of types:
tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

 - mean() 
 - std() 
 for each of these variables.
 
The '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions; mean() and std() are the mean and the standard deviation variables from the original data file; notice that in the tidydat.txt data, the included values are the means of these values from the original data set; i.e. means of means, and means of standard deviations.  
