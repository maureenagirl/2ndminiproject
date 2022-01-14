Fely Maureen N. Conanan
CMSC 197 2nd Mini-Project
Item #1 README.md
---------------------------------------------------------------------

-Explanation of the run_analysis.R script-

Assigning important data to variables

* features <- features.txt - The features selected for this database 
* activities <- activity_labels.txt - list of activities carried out after the corresponding measurements were taken, along with their codes

* X_train <- test/X_train.txt - contains recorded features train data
* y_train <- test/y_train.txt - contains train data of activities’ code labels 
* subject_train <- test/subject_train.txt - contains train data of subjects being observed
* X_test <- test/X_test.txt - contains recorded features test data
* y_test <- test/y_test.txt - contains test data of activities’code labels
* subject_test <- test/subject_test.txt - contains test data of test subjects being observed

* X_train_p - is created by merging y_train, subject_train, x_train using cbind() function
* X_test_p - is created by merging y_test, subject_test, x_test using cbind() function

-> Merges the training and the test sets to create one data set

* x_data is created by merging x_train and x_test using rbind() function
* y_data is created by merging y_train and y_test using rbind() function
* subject_data is created by merging subject_train and subject_test using rbind() function

-> Extracts only the measurements on the mean and standard deviation for each measurement

* x_mean_std is created by selecting only column's names and the measurements on the mean and standard deviation (std) for each measurement and assigning to x_mean_std

-> Uses descriptive activity names to name the activities in the dataset

* x_clean <- cbind(y_data,X_mean_std) - is created by merging y_data and x_mean_std using cbind() function
* colnames(X_clean)[1] <- 'Index_Activity'	- renaming the column names of the merged data x_clean
* x_clean <- cbind(subject_data,X_clean) - merging subject_data and x_clean using cbind() function and assigning it as new value of x_clean
* colnames(X_clean)[1] <- 'Subject'	- renaming the column names of the merged data x_clean

* X_clean <- merge(activity_labels,X_clean)	- merging activity_labels and x_clean and assigning as new valaue of x_clean
* X_clean$Index_Activity <- NULL 

-> Appropriately labels the data set with descriptive variable names

* All ^t in column’s name replaced by Time domain signal
* All ^f in column’s name replaced by Frequency domain signal
* All - in column’s name replaced by ,
* All mean\\(\\) in column’s name replaced by mean value
* All std\\(\\) in column’s name replaced by standard deviation
* All -X in column’s name replaced by in X direction
* All -Y in column’s name replaced by in Y direction
* All -Z in column’s name replaced by in Z direction
* All AccJerk in column’s name replaced by  acceleration jerkv
* All GyroJerk in column’s name replaced by  angular velocity jerk
* All Gyro in column’s name replaced by  angular velocity
* All Mag in column’s name replaced by  magnitude

-> From the data set in step 4, create a second, independent tidy data set with the average of each variable
for each activity and each subject

* x_tidy is created by sumarizing x_mean_std taking the means of each variable for each activity and each subject, after groupped by subject and activity.
* tidy_data_set.txt - Storing the final tidy data set

