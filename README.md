# Cleaning Data Project

####This project takes the Human Activity Recognition Using Smartphones Dataset

Version 1.0 
----------------------
**License:**

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.

----------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually.

## r_analysis.R explanation

Parts 1 through 4 of the assignment are accoplished in the following order:

1. load the dplyr package
2. load all the data files available into separate data frames
3. create a function that translates activity labels as numbers into corresponding character values.
4. apply the above function to the datasets.
5. complete datasets with the rest of the information, such as participant information and descriptive variable names, using the datafiles that were loaded in step 2
6. since test data and train data have matching variable names, they are matched using rbind, with activity and participant variables moved to the first two positions in the dataframe.
7. all the variable names are stored in varNames vector
8. selectColNames containes the location of the columns that match the search criteria and contain either "mean" or "std" in their name.
9. onlyAvrSTD dataframe is the tidy dataset requested by the assignment.
10. summaryData is the separate tidy dataset requested, with each variable summarized by participant and activity. 


## How to use it
1. Clone the repo on your home machine. 

2. Run the R file. 

3. Check out the codeBook file.

4. Enjoy tidy data!


