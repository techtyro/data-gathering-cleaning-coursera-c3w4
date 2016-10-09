# This file serves objective 2 of the project. It selects the columns that represent a measure of mean / standard deviation
# Before sourcing this file, source "1_4_data_merge_label.R".

require(dplyr)
#Don't proceed further if merged data is not available;
if(!exists("merged_data"))
    stop("First execute 1_4_data_merge_label.R")
#Selecting columns containing only mean and std data.
#Including person_id and activity variables for identification.
mean_std_data <- merged_data %>% select(person_id, activity, matches("[Mm]ean|[Ss]td"))
