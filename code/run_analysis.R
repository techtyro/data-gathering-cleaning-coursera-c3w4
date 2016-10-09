# This file only sources the files that fulfill the individual objectives
# specified in the project's narrative.
# The files can also be manually sourced to get the desired result

if(!file.exists("1_4_data_merge_label.R") ||
   !file.exists("2_select_mean_std.R") ||
   !file.exists("3_descriptive_names.R") ||
   !file.exists("5_summarize_data.R"))
    stop(paste("Copy the following files to the working directory",
               ",\n or change the directory to one which contains these:",
               "1_4_data_merge_label.R, 2_select_mean_std.R, 3_descriptive_names.R, 5_summarize_data.R"))

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              "proj_data.zip")

unzip("proj_data.zip")
file.rename("UCI HAR Dataset", "proj_data")

source("1_4_data_merge_label.R")
source("2_select_mean_std.R")
source("3_descriptive_names.R")
source("5_summarize_data.R")