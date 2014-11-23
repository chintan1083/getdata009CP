Course project Assignment for "Getting and Cleaning Data"
==================================================================

This repo contains the Assignment for Coursera Course on Getting and Cleaning Data. 

Following are the files present in the repository

- README.md -- Summary of the files and how the script runs
- run_analysis.R -- R script to generate tidy data from raw data
- CodeBook.md -- Code book which provides details of the features in the tidy data.


run_analysis.R 
#############

This file contains complete script to transform raw data to tidy data. Following are the details of the steps performed in the scripts

The script assumes that the raw data is present in the "UCI HAR Dataset" folder in the working directory. 

We first Load Train and Test data from respective location from the input directory using read.table

Then we merge them using rbind command for the requirement of Step 1

In order to get only the features for which measurements are available in means and standard deviations, we first loads the feature names from features.txt and find the indices of the features whose name contains mean,sd or meanFreq. Then we use these indicies to subset the original merged dataset, which now only contains the required features of Step 2.

Then we rename the names of the features in the dataframes using the original names from features.txt --Step 4

We then Load the Activity lables for train and test data and merge them. And we load the activity names which is then joined with the lables on to get the descriptive activity names for each row. And we add this as additional column in dataframe. for Step 3

In order to add the subject lables, we load the train and test data and then merge then together. And which is added as an additional field in the dataframe.

We now use these two newly added variables, subject and activity, to generate the required mean using aggregation.data.frame to get the mean of each variables for combination of subject and activity. for Step 5. 

FInally we write the function to provide proper names to the generated new tidy dataset. And write this data to a file in the working directory.

