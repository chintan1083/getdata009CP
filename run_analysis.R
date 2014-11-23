# Load Train and Test data from "UCI HAR Dataset" Directory in the working directory

trainData <- read.table("UCI HAR Dataset/train/X_train.txt")

testData <- read.table("UCI HAR Dataset/test/X_test.txt")

# Merge the train and test data --Step 1
completeDataset <- rbind(trainData,testData)

# Loads feature names
features <- read.table("UCI HAR Dataset/features.txt")

# Finds the indices of the features whose names are either mean.sd or meanFreq
meansSdIndices <- grep("\\w+\\-(mean|std|meanFreq)\\(\\)",features$V2) 

# Subset the complete data with only the mean and sd fields --Step 2
tidyData <- completeDataset[,meansSdIndices]

# Provide meaningful names to the tidy dataset --Step 4
names(tidyData) = features[meansSdIndices,"V2"]

# Load the Activity lables for train and test data
trainLables <- read.table("UCI HAR Dataset/train/y_train.txt")

testLables <- read.table("UCI HAR Dataset/test/y_test.txt")

# merge train and test activity lables 
completeLables <- rbind(trainLables,testLables)

# Load the Activity Names
activityLables <- read.table("UCI HAR Dataset/activity_labels.txt")

# Join on the activity lables and the Activity Name
activityNames <- merge(x=completeLables,y=activityLables,by.x = "V1",by.y = "V1")

# Create new variable for Activity name -- Step 3
tidyData$activity <- activityNames$V2

# Load the Subject lables for train and test data

trainSubjects <- read.table("UCI HAR Dataset/train/subject_train.txt")

testSubjects <- read.table("UCI HAR Dataset/test/subject_test.txt")

# merge train and test Subject  lables 
completeSubjects <- rbind(trainSubjects,testSubjects)

# Create new variable for Subject
tidyData$subject <- completeSubjects$V1

# Aggregation to generate mean of each fields, on grouping of subject and activity -- Step 5
tidyData2 <- aggregate(tidyData[,1:79],by=list(tidyData$subject,tidyData$activity),mean)

# Function to generate proper name for tidy Data
changeNames <- function(x){ 
  y <- if(x == "Group.1"){
     "subject"}
  else if(x== "Group.2"){
   "activity"}
   else{
   paste("mean",x,sep="_")}
    y
   }

# Change proper names
names(tidyData2) <- sapply(names(tidyData2),changeNames)

write.table(tidyData2,file="tidyData2.txt",row.names=F)


