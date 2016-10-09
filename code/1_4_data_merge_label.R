# This file serves objectives 1 and 4 of the project.
# It merges the data and labels the columns with appropriate names.
# The code can definitely be refactored into functions, 
# but to ensure easy comprehension, it is presented
# as a simple script.

if(!file.exists("proj_data"))
    stop(paste("Missing project data",
               "\nDownload project data and extract it in a folder named proj_data, within the directory containing the source files"))

currdir <- getwd()
setwd("proj_data")

library(dplyr)

#Read data features' names
features <- read.table("features.txt")
colnames(features)[2] <- ("feature_names")

#Read training data
train_x <- read.table("./train/X_train.txt")
train_y <- read.table("./train/y_train.txt")
train_subj <- read.table("./train/subject_train.txt")

#Name variables in the train data.
names(train_subj) <- "person_id"
names(train_y) <- "activity"
names(train_x) <- features$feature_names

#Merge train data
train_data <- bind_cols(train_subj, train_y, train_x)

#Read test data
test_x <- read.table("./test/X_test.txt")
test_y <- read.table("./test/y_test.txt")
test_subj <- read.table("./test/subject_test.txt")

#Name variables in the test data.
names(test_subj) <- "person_id"
names(test_y) <- "activity"
names(test_x) <- features$feature_names

#Merge test data
test_data <- bind_cols(test_subj, test_y, test_x)

#Merge training & test data
merged_data <- bind_rows(train_data, test_data)

setwd(currdir)