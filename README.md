# Getting and Cleaning Data - Coursera Data Science Course 3, Week 4 Proj Submission
Code for the project is present in the [code](code) folder.
To execute the code, run_analysis.R and the ==code== directory from the repository should be in your working directory.
Then source the run_analysis.R file. It downloads the data to the working directory.
Further it unzips the archive and does the required analysis by sourcing the other code files.

If you have already downloaded the source data (which as part of course you must have), and want to **save your bandwidth**
then before sourcing run_analysis.R: 
* Comment out lines 11 & 12 in the file and save it, 
* Copy the downloaded archive to your working directory, and rename it "proj_data.zip"
* Then execute `source("run_analysis.R")`

Final tidy data is written into summarized_mean_dev.txt, in the working directory

The resulting file has be renamed and uploaded as [tidy_data.csv](tidy_data.csv) in the repository. It is also present in the .txt version as [summarized_mean_dev.txt](summarized_mean_dev.txt)

The files sourced by run_analysis.R accomplish the following tasks:

* [1_4_data_merge_label.R](code/1_4_data_merge_label.R) This file serves objectives 1 and 4 of the project. It merges the data and labels the columns with appropriate names. The code can definitely be refactored into functions,  but to ensure easy comprehension, it is presented as a simple script
* [2_select_mean_std.R](code/2_select_mean_std.R) This file serves objective 2 of the project. It selects the columns that represent a measure of mean / standard deviation
* [3_descriptive_names.R](code/3_descriptive_names.R) Code in the file serves objective 3 of the project; assigns activity labels to the numbers.
* [5_summarize_data.R]() This file serves objective 5 of the project. It summarizes each of the selected column to its mean, grouped by person (subject) and activity