# GettingAndCleaningData
Coursera's Getting and Cleaning Data course work

This repo contains the run_analysis.R file that has the R script that performs the required data manipulations.

You should have the original data file unzipped into your working directory to run this script; i.e. your wd should include the /UCI HAR Dataset/ directory and its subdirectories; then the script finds the files.

PLEASE NOTE that this work has been done on a Linux computer, and therefore the file paths use the forward slash ("/"). If you are using a Windows computer, you may need to edit these to correspond to the Windows file path notation.

The script is commentd so it should be rather self-explanatory. Here's a short summary of what it does:
- The data that shoud be unzipped to the working directory is here:  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
- the training and test data are combined into one data set, and the descriptive variable (column) names are fetched from another file
- the activity names and subject codes are added to the data as new columns
- from the original data set, only mean and std variables are selected, others are discarded
- Finally, a new data set (tidydat) is made by taking averages of all variable per actility type and test subject. This results in 180 rows (= 6 activity types * 30 test subjects) and 68 columns (activity, subject, and 66 variables) 


