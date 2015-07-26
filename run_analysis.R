
library(reshape2)

## Step 1: Merges the training and the test sets to create one data set.
## Reading all test data
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

## Reading all training data
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Merging test and training data sets
## Inertial Signals data is not merged here
joinData <- rbind(X_test, X_train)
joinLabel <- rbind(y_test, y_train)
joinSubject <- rbind(subject_test, subject_train)

## Appropriately labels the data set with descriptive variable names
## Naming the columns according to their featurenames
features <- read.table("./UCI HAR Dataset/features.txt")
feature_names <- features[,2]
colnames(joinData) <- feature_names
colnames(joinLabel) <- "activity_id"
colnames(joinSubject) <- "subject_id"

## Merging all the labeled datasets together
joinDataSet <- cbind(joinData, joinLabel, joinSubject)

## Step 2: Extract measurements on means and standard deviation for each measurement
## Keeping only colummns with "mean" and "std" in the column name
mean_col_indices <- grep("mean", colnames(joinDataSet), ignore.case=TRUE)
mean_col_names <- colnames(joinDataSet)[mean_col_indices]
std_col_indices <- grep("std", colnames(joinDataSet), ignore.case=TRUE)
std_col_names <- colnames(joinDataSet)[std_col_indices]
cleaneddata <- joinDataSet[, c("subject_id", "activity_id", mean_col_names, std_col_names)]

## Step 3: Uses descriptive activity names to name the activities in the data sets
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt", col.names=c("activity_id", "activity_name"))
descrnames <- merge(activity_labels, cleaneddata, by.x="activity_id", by.y = "activity_id", all=TRUE)

## Step 4: Appropriately labels the data set with descriptive variable names
## Step 4 was done earlier before step 2.

## Step 5: Create second, independant tidy data set with the average of each variable for each activity and each subject.
data_melt <- melt(descrnames,id=c("activity_id","activity_name","subject_id"))
mean_data <- dcast(data_melt,activity_id + activity_name + subject_id ~ variable,mean)
write.table(mean_data,"./tidy_data.txt", row.names = FALSE)



