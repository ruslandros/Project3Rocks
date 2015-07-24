# Introduction

This is the programming assignment for the Coursera Getting and Cleaning Data.

The purpose of this project is to demonstrate one's ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

# The Assignment

The assignment is to create one R script called run_analysis.R that does the following. 

    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement. 
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.
    
    5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

# The dataset

The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Set up and executing the script

1. Download the dataset from the above url
2. unzip the dataset
3. execute the run_analysis.R from the zipped directory. In this case from the directory "UCI HAR Dataset".
4. once the script is completed, a text file tidy_data.txt will be created in this diretory.
5. To view the data in R

* data <- read.table("tidy_data.txt", header = TRUE)

* View(data)

# Reference files

* README.md - this file
* run_analysis.R - script to run to get the final tidy data set
* codebook.md - descriptions of variables in the final tidy set

Please refer to the README.txt in the directory "UCI HAR Dataset" for the full details of the original datasets and description.
