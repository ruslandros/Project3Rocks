#
## run_analysis() 
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names.
# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#
# Here are the data for the project:
# https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
## to execute the script in R
#
## 1. unzip the source data file
## from the directory "UCI HAR Dataset"
## 2. source("run_analysis.R")
## 3. run_analysis()
#
## a text file tidy_data.txt will be created in the directory for where the script was run.
#
# to view the tidy data saved in tidy_data.txt
# data <- read.table("tidy_data.txt", header = TRUE)
# View(data)
#

## 1. create temporary tidy data for TEST data set with mean and standard deviation measurements only
## 2. create temporary tidy data fro TRAINING data set with mean and standard deviation measurements only
## 3. merge both temporary data sets
## 4. create tidy data which average of each variable for each activity and each subject.
## 5. write to file tidy_data.txt
#

run_analysis <- function() {
        
        # get the activity labels
        activity_labels <- read.table("./activity_labels.txt")
        
        # TEST data set

        # read data sets
        test_subject <- read.table("test/subject_test.txt")
        test_labels <- read.table("test/y_test.txt", colClass= "character")
        test_sets <- read.table("test/X_test.txt")
        
        features <- read.table("./features.txt", colClass= "character")
        
        # get all column names for data set
        col_names <- features[,2]
        
        # replace test activity label with test activity name 
        test_labels$V1 <- activity_labels[,2][match(test_labels$V1, activity_labels[,1])]  
        
        # combine test subject and activities
        test_subject_activities <- cbind(test_subject, test_labels)
        
        # put in descriptive column names
        names(test_subject_activities) <- c("Subject", "Activity")
        
        # put in column names in data set
        names(test_sets) <- col_names

        # get all "mean()" and "std()" columns from data set
        test_mean_std_columns <- test_sets[grep("-(mean|std)\\(\\)", names(test_sets))]      

        test_tidy_data <- cbind(test_subject_activities, test_mean_std_columns)

        # now get the TRAINING data
        
        # read data sets
        train_subject <- read.table("train/subject_train.txt")
        train_labels <- read.table("train/y_train.txt", colClass= "character")
        train_sets <- read.table("train/X_train.txt")
        
        # replace test activity label with test activity name 
        train_labels$V1 <- activity_labels[,2][match(train_labels$V1, activity_labels[,1])]  
        
        # combine test subject and activities
        train_subject_activities <- cbind(train_subject, train_labels)
        
        # put in descriptive column names
        names(train_subject_activities) <- c("Subject", "Activity")
        
        # put in column names in data set
        names(train_sets) <- col_names

        # get all "mean" and "std" columns from data set
        train_mean_std_columns <- train_sets[grep("-(mean|std)\\(\\)", names(train_sets))]        

        train_tidy_data <- cbind(train_subject_activities, train_mean_std_columns)

        # merge TEST and TRAINING data sets        
        tidy_data <- rbind(test_tidy_data, train_tidy_data)
        
        # get the average
        aggdata <-aggregate(tidy_data[,3:68], by=list(Subject = tidy_data$Subject, Activity = tidy_data$Activity), FUN=mean, na.rm=TRUE)
        
        # write to file tidy.txt
        write.table(aggdata, "tidy_data.txt", row.names = FALSE )  
        
}
