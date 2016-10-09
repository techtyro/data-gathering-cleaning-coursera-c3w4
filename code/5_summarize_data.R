# This file serves objective 5 of the project. 
# It summarizes each of the selected column to its mean, grouped by person (subject) and activity
# before sourcing the file, it's mandatory to source following files in 
# the given order
# 1. 1_4_data_merge_label.R
# 2. 2_select_mean_std.R
# 3. 3_descriptive_names.R

tidy_data <- mean_std_data %>% 
    group_by(person_id, activity) %>%
    summarize_each(rep("mean", ncol(mean_std_data) - 2)) %>%
    print()

write.table(tidy_data, "summarized_mean_dev.txt", row.names = F, quote = F)