run_analysis <- function() {
        
        activity_labels <- read.table("./activity_labels.txt")
        
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
        #ll <- tidy_data[grepl("mean", names(tidy_data))]
        
        # get all "mean" and "std" columns from data set
        mean_columns <- test_sets[grepl("mean", names(test_sets))]
        std_columns <- test_sets[grepl("std", names(test_sets))]
        
        test_tidy_data <- cbind(test_subject_activities, mean_columns, std_columns)

        # now get the training data
        
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
        #ll <- tidy_data[grepl("mean", names(tidy_data))]
        
        # get all "mean" and "std" columns from data set
        train_mean_columns <- train_sets[grepl("mean", names(train_sets))]
        train_std_columns <- train_sets[grepl("std", names(train_sets))]
        
        train_tidy_data <- cbind(train_subject_activities, train_mean_columns, train_std_columns)
        
        tidy_data <- rbind(test_tidy_data, train_tidy_data)
        
        aggdata <-aggregate(tidy_data[,3:81], by=list(Subject = tidy_data$Subject, Activity = tidy_data$Activity), FUN=mean, na.rm=TRUE)
        
        write.table(aggdata, "tidy_data.txt", row.names = FALSE )    
}
