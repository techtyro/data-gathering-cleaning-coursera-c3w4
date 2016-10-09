# This file only sources the files that fulfill the individual objectives
# specified in the project's narrative.
# The files can also be manually sourced to get the desired result

if(!file.exists("./code/1_4_data_merge_label.R") ||
   !file.exists("./code/2_select_mean_std.R") ||
   !file.exists("./code/3_descriptive_names.R") ||
   !file.exists("./code/5_summarize_data.R"))
    stop("Copy the repository's \'code\' folder to your working directory")

#download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
#              "proj_data.zip")

if(!file.exists("proj_data.zip") || file.size("proj_data.zip") <  62550000)
    stop("Either the data archive \'proj_data.zip' is not present in working directory, or it is corrupt!")
unzip("proj_data.zip")
file.rename("UCI HAR Dataset", "proj_data")

source("./code/1_4_data_merge_label.R")
source("./code/2_select_mean_std.R")
source("./code/3_descriptive_names.R")
source("./code/5_summarize_data.R")