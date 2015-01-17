#Required Modules are Curl and dplyr
require(RCurl)
library(dplyr)

##Function to Merge the subject info, observations & activity

#Set the working Directory where the data is stored
#i.e the directory where the data files: 
#features.txt, activity_labels.txt... are stored
#setwd("")

# Activity Label File Path & Content
activityLabelFile <- "./activity_labels.txt"
if(file.exists(activityLabelFile)) {
    activityLabel <- read.table( 
        file=activityLabelFile)
    
}

# Get Features Activity Label File Path & Content
featuresFile <- "./features.txt"
if(file.exists(featuresFile)) {
    features <- read.table( 
        file=featuresFile)
        
}
##Make the Features Readable
features$V2 <- gsub("\\(\\)-","_",features$V2)
features$V2 <- gsub("\\(\\)","_",features$V2)
features$V2 <- gsub("-","_",features$V2)
features$V2 <- gsub("mean_$","mean",features$V2)
features$V2 <- gsub("std_$","std",features$V2)
features$V2 <- gsub("BodyBody","Body",features$V2)
features$V2 <- gsub("\\,","_",features$V2)

#Read the Test Results
observationsTest <- read.table (
    file="./test/X_test.txt")
subjectTest <- read.table (
    file="./test/subject_test.txt")
activityTest <- read.table (
    file="./test/y_test.txt")

#activityTest <- merge(activityTest,activityLabel)


# Add in the readable Column names to the Test Data
colnames(observationsTest) <- features[,2]
colnames(subjectTest) <- c("Subject")
colnames(activityLabel) <- c("activityID","activityLabel")
colnames(activityTest) <- c("activityID")

finalTestSet<- cbind(subjectTest,activityTest,observationsTest)
#finalTestSet<- merge(finalTestSet,activityLabel,by.x="activityID",by.y = "activityID",sort=FALSE)
#finalTestSet<- merge(finalTestSet,activityLabel,sort=FALSE)

### Get the Training Data
observationsTrain <- read.table (
    file="./train/X_train.txt")
subjectTrain <- read.table (
    file="./train/subject_train.txt")
activityTrain <- read.table (
    file="./train/y_train.txt")
#activityTrain <- merge(activityTrain,activityLabel)

# Add in the readable Column names to the Training Data
colnames(observationsTrain) <- features[,2]
colnames(subjectTrain) <- c("Subject")
colnames(activityTrain) <- c("activityID")
finalTrainSet<- cbind(subjectTrain,activityTrain,observationsTrain)
#Combine the Training and the Test Data
finalSet <- rbind(finalTrainSet,finalTestSet)
#Remove the duplicated Columns
finalSet <- finalSet[,!duplicated(colnames(finalSet))]
#Merge in the Activity Label
finalSet<- merge(finalSet,activityLabel,by="activityID",sort=FALSE)


#Get the mean and the std columns associated with the Subject and the Activity
firstTidy <- select(finalSet,contains("mean_",ignore.case = FALSE),contains("mean$",ignore.case = FALSE),contains("std_",ignore.case = FALSE),contains("std$",ignore.case = FALSE),Subject,activityLabel)
#Get the means of the observations by grouping the data set by Subject and Activity
firstTidy %>% group_by(activityLabel,Subject) %>% summarise_each(funs(mean)) -> tidyDataSet
## Write the DataSet to tidyDataSet.txt
write.table(tidyDataSet,"./tidyDataSet.txt", row.name = FALSE)
