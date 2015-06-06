#####################
## Course project for Getting and Cleaning Data @ Coursera
## LU, Jun 2015
####################

#Here are the data for the project: 
#        https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
#
#You should create one R script called run_analysis.R that does the following. 
#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names. 
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
#Good luck!

############################
##Point 1:
#Merges the training and the test sets to create one data set.
############################

#read the data sets, 
#add a column that includes the activity label
#add a column taht includes the subject (the person)
train<-read.table("UCI HAR Dataset/train/X_train.txt")
label<-read.table("UCI HAR Dataset/train/y_train.txt")
subject<-read.table("UCI HAR Dataset/train/subject_train.txt")
train<-cbind(subject,label,train)


test<-read.table("UCI HAR Dataset/test/X_test.txt")
label<-read.table("UCI HAR Dataset/test/y_test.txt")
subject<-read.table("UCI HAR Dataset/test/subject_test.txt")
test<-cbind(subject,label,test)

#combine these sets
dat<-rbind(train,test)

#read colnames from separate file, write column names to data file
cols<-read.table("UCI HAR Dataset/features.txt")
cols<-as.vector(cols[,2])
cols<-c("subject","activityLabel",cols)
colnames(dat)<-cols
#dat[c(1:5),c(1:5)]

##########################
##Point 2:
#Extracts only the measurements on the mean and standard deviation for each measurement. 
##########################

#keep only means, stdevs, and activity label & subject number
dat<-dat[grepl("mean\\(\\)|std\\(\\)|activityLabel|subject", names(dat))]
#ncol(dat) #gives 68

###################
##Point 3:
#Uses descriptive activity names to name the activities in the data set
###################

#here are the names of activities that correspond to activity labels
activityMapping<-read.table("UCI HAR Dataset/activity_labels.txt")

#name the activity mapping columns so that the label name corresponds
#to the same value in the data file;
#merge these two tables to get the activity names into the data table.
#Then remove the activityLabel column as redunant & unnecessary
colnames(activityMapping)<-c("activityLabel","activity")
dat<-merge(activityMapping,dat)
dat<-dat[,-1]

########################
#Point 4:
#Appropriately labels the data set with descriptive variable names. 
########################
#This is taken care of already, the column names are the measurement labels which are rather descriptive

########################
#Point 5:
#From the data set in step 4, creates a second, independent tidy data set with the average of each 
#variable for each activity and each subject.
########################

#I hope I understood correctly what the required format of the tidy data set is. 
#I interpreted it to mean the following:
# - the variables are the ones selected in the previous step, i.e. the means and std:s of all measured variables
# - the tidy data consists of means of each variable, in each activity, with each test subject, separately: i.e. the 
#       means of the measurements for "subject 1 walking, subject 2 walking, ... "subject 29 laying, subject 30 laying" etc. 


install.packages("plyr")
library(plyr)

func<-function(input) {
        output<-input[1,]
        output[1,c(3:ncol(input))]<-colMeans(input[,c(3:(ncol(input)))])  
        return(output)
}


tidydat<-ddply(dat, .(activity,subject), func)

write.table(tidydat, "tidydat.txt",  row.name=FALSE)
