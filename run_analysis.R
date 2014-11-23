trainData <- read.table("UCI HAR Dataset/train/X_train.txt")

testData <- read.table("UCI HAR Dataset/test/X_test.txt")


completeDataset <- rbind(trainData,testData)

features <- read.table("UCI HAR Dataset/features.txt")

meansSdIndices <- grep("\\w+\\-(mean|std|meanFreq)\\(\\)",features$V2) 

tidyData <- completeDataset[,meansSdIndices]

names(tidyData) = features[meansSdIndices,"V2"]

trainLables <- read.table("UCI HAR Dataset/train/y_train.txt")

testLables <- read.table("UCI HAR Dataset/test/y_test.txt")

completeLables <- rbind(trainLables,testLables)

activityLables <- read.table("UCI HAR Dataset/activity_labels.txt")

activityNames <- merge(x=completeLables,y=activityLables,by.x = "V1",by.y = "V1")

tidyData$activity <- activityNames$V2

trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

completeSubjects <- rbind(trainSubjects,testSubjects)

tidyData$subject <- completeSubjects$V1

tidyData2 <- aggregate(tidyData[,1:79],by=list(tidyData$subject,tidyData$activity),mean)


changeNames <- function(x){ 
  y <- if(x == "Group.1"){
     "subject"}
  else if(x== "Group.2"){
   "activity"}
   else{
   paste("mean",x,sep="_")}
    y
   }

names(tidyData2) <- sapply(names(tidyData2),changeNames)


