# Code in the file serves objective 3 of the project; assigns activity labels to the numbers.
# Before sourcing the file, source "files 1_4_data_merge_label.R"
# and "2_select_mean_std.R"

#Read activity lables
currdir <- getwd()
setwd("proj_data")
activity_labels <- read.table("./activity_labels.txt")
colnames(activity_labels)[2] <- "activity"

#Assigning activity labels to activity numbers in the merged data set
if(!exists("mean_std_data"))
    stop("First execute 2_select_mean_std.R")
mean_std_data$activity <- factor(mean_std_data$activity, labels = activity_labels$activity)
setwd(currdir)