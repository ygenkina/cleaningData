#load libraries necessary
library(dplyr)
library(tidyr)
# load the "messy" datasets 
testData<-read.table("UCI HAR Dataset/test/X_test.txt")
trainData<-read.table("UCI HAR Dataset/train/X_train.txt")
testParticipants<-read.table("./UCI HAR Dataset/test/subject_test.txt")
trainParticipants<-read.table("./UCI HAR Dataset/train/subject_train.txt")
testLabels<-read.table("UCI HAR Dataset/test/y_test.txt")
trainLabels<-read.table("UCI HAR Dataset/train/y_train.txt")
measureLabels<-read.table("./UCI HAR Dataset/features.txt")

# use the following function to add characher labels to activities
addActivityLables<-function(x){
   if (x == 1 ) {"walking"} 
  else if (x == 2) {"walkUpstairs"} 
  else if (x == 3) {"walkDownstairs"} 
  else if (x == 4) {"sitting"} 
  else if (x ==5) {"standing"} 
  else {"laying"}
}

#convert numeric activity labels into descriptive names
testActivity<-sapply(testLabels$V1,addActivityLables)
trainActivity<-sapply(trainLabels$V1,addActivityLables)

#create two datasets complete with all the data and labels.

testDataWithLabels<-testData
names(testDataWithLabels)<-measureLabels$V2
testDataWithLabels$participant<-testParticipants$V1
testDataWithLabels$activity<-testActivity

trainDataWithLabels<-trainData
names(trainDataWithLabels)<-measureLabels$V2
trainDataWithLabels$participant<-trainParticipants$V1
trainDataWithLabels$activity<-trainActivity

#merge two data sets into one containing 10299 observations and 563 variables

mergedData <- rbind(testDataWithLabels,trainDataWithLabels)

# arrange the vars such that participant and activity are first
namesMergedData<-names(mergedData)
mergedData<-mergedData[c(namesMergedData[562:563],namesMergedData[1:561])]
mergedData<-arrange(mergedData,participant)


