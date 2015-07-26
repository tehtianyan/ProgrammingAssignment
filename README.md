# Context
The script reads data from the "Human Activity Recognition Using Smartphones Dataset Version 1.0" and produces a second dataset for further analysis.

# A brief description of the script:
The run_analysis.R script merges several data sets and summarizes a tidy dataset for analysis. 

1. The script first loads the reshape2 library for the "merge" function to work. This would avoid dependency related issues later on. 
2. It then reads all required .txt files (except for the Inertial Signals .txt) and merges the training and testing data. 
3. It then names the variable names with descriptive labels. Then, it merges the subject id column, activity id column, and the rest of the data into a singular dataset. 
4. All the columns with mean() and std() values are extracted and then a new data frame, including only the "activity_id", the "subject_id" and the mean() and std() columns, is created
5. Descriptive activity names are then merged with the mean and standard decitation values. 
6. The data is converted into a table containing mean values of all the included features, ordered by the activity name and the subject id.
7. Finally, the data is written to the "tidy_data.txt" file.

A description of the "tidy_data.txt" file may be found in the "CodeBook.md" file.

# Acknowledgements:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

