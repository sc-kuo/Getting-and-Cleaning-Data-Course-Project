# Getting-and-Cleaning-Data-Course-Project

This repository is for the completion of the Programming Assignment in the Getting and Cleaning Data Course in Coursera.
This repository contains the R script entitled run_analysis.R, the final output entitled tidydata.txt, a codebook, and this readme file.

A full description of the case being worked on can be obtained from the following link: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data can be obtained from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The assignment's task involves the creation of the R script, run_analysis.R, which accomplishes the following:
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Code Description
The initial lines of the code basically reads all the necessary data from the downloaded data. Since the datasets are partitioned for testing and training data, the data that were read were also combined to form just one data set. The tasks mentioned above were then accomplished in sequential order.

The code, run_analysis.R, also outputs the final desired tidy data into a .txt file for future use through R or other desired programs.
