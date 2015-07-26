
# Code Book 
This file describes the variables of the data in the final output "tidy_data.txt".

## Context:

A full description of the original data is available at:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The original data is available at: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

## Subject ID
Denoted as: subject_id (column 1)
The value represents the ID of the subject/participant performing the activity. 70% of the subjects/participants generate the training data and 30% the test data

## Activity ID
Denoted as: activity_id (column 2)
Each of the values represents six different activities that the subject is performing wearing a smartphone on the waist.

* WALKING (value 1)
* WALKING_UPSTAIRS (value 2)
* WALKING_DOWNSTAIRS (value 3)
* SITTING (value 4)
* STANDING (value 5)
* LAYING (value 6)

## Feature Fields (Means and Standard Deviations)

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

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

The set of variables that were cleaned from these signals are: 

mean(): Mean value
std(): Standard deviation

tBodyAcc-mean()-X(Column 3)
tBodyAcc-mean()-Y(Column 4)
tBodyAcc-mean()-Z(Column 5)
tGravityAcc-mean()-X(Column 6)
tGravityAcc-mean()-Y(Column 7)
tGravityAcc-mean()-Z(Column 8)
tBodyAccJerk-mean()-X(Column 9)
tBodyAccJerk-mean()-Y(Column 10)
tBodyAccJerk-mean()-Z(Column 11)
tBodyGyro-mean()-X(Column 12)
tBodyGyro-mean()-Y(Column 13)
tBodyGyro-mean()-Z(Column 14)
tBodyGyroJerk-mean()-X(Column 15)
tBodyGyroJerk-mean()-Y(Column 16)
tBodyGyroJerk-mean()-Z(Column 17)
tBodyAccMag-mean()(Column 18)
tGravityAccMag-mean()(Column 19)
tBodyAccJerkMag-mean()(Column 20)
tBodyGyroMag-mean()(Column 21)
tBodyGyroJerkMag-mean()(Column 22)
fBodyAcc-mean()-X(Column 23)
fBodyAcc-mean()-Y(Column 24)
fBodyAcc-mean()-Z(Column 25)
fBodyAcc-meanFreq()-X(Column 26)
fBodyAcc-meanFreq()-Y(Column 27)
fBodyAcc-meanFreq()-Z(Column 28)
fBodyAccJerk-mean()-X(Column 29)
fBodyAccJerk-mean()-Y(Column 30)
fBodyAccJerk-mean()-Z(Column 31)
fBodyAccJerk-meanFreq()-X(Column 32)
fBodyAccJerk-meanFreq()-Y(Column 33)
fBodyAccJerk-meanFreq()-Z(Column 34)
fBodyGyro-mean()-X(Column 35)
fBodyGyro-mean()-Y(Column 36)
fBodyGyro-mean()-Z(Column 37)
fBodyGyro-meanFreq()-X(Column 38)
fBodyGyro-meanFreq()-Y(Column 39)
fBodyGyro-meanFreq()-Z(Column 40)
fBodyAccMag-mean()(Column 41)
fBodyAccMag-meanFreq()(Column 42)
fBodyBodyAccJerkMag-mean()(Column 43)
fBodyBodyAccJerkMag-meanFreq()(Column 44)
fBodyBodyGyroMag-mean()(Column 45)
fBodyBodyGyroMag-meanFreq()(Column 46)
fBodyBodyGyroJerkMag-mean()(Column 47)
fBodyBodyGyroJerkMag-meanFreq()(Column 48)
angle(tBodyAccMean,gravity)(Column 49)
angle(tBodyAccJerkMean),gravityMean)(Column 50)
angle(tBodyGyroMean,gravityMean)(Column 51)
angle(tBodyGyroJerkMean,gravityMean)(Column 52)
angle(X,gravityMean)(Column 53)
angle(Y,gravityMean)(Column 54)
angle(Z,gravityMean)(Column 55)
tBodyAcc-std()-X(Column 56)
tBodyAcc-std()-Y(Column 57)
tBodyAcc-std()-Z(Column 58)
tGravityAcc-std()-X(Column 59)
tGravityAcc-std()-Y(Column 60)
tGravityAcc-std()-Z(Column 61)
tBodyAccJerk-std()-X(Column 62)
tBodyAccJerk-std()-Y(Column 63)
tBodyAccJerk-std()-Z(Column 64)
tBodyGyro-std()-X(Column 65)
tBodyGyro-std()-Y(Column 66)
tBodyGyro-std()-Z(Column 67)
tBodyGyroJerk-std()-X(Column 68)
tBodyGyroJerk-std()-Y(Column 69)
tBodyGyroJerk-std()-Z(Column 70)
tBodyAccMag-std()(Column 71)
tGravityAccMag-std()(Column 72)
tBodyAccJerkMag-std()(Column 73)
tBodyGyroMag-std()(Column 74)
tBodyGyroJerkMag-std()(Column 75)
fBodyAcc-std()-X(Column 76)
fBodyAcc-std()-Y(Column 77)
fBodyAcc-std()-Z(Column 78)
fBodyAccJerk-std()-X(Column 79)
fBodyAccJerk-std()-Y(Column 80)
fBodyAccJerk-std()-Z(Column 81)
fBodyGyro-std()-X(Column 82)
fBodyGyro-std()-Y(Column 83)
fBodyGyro-std()-Z(Column 84)
fBodyAccMag-std()(Column 85)
fBodyBodyAccJerkMag-std()(Column 86)
fBodyBodyGyroMag-std()(Column 87)
fBodyBodyGyroJerkMag-std()(Column 88)
         
