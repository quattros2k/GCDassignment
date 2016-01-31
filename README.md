README.md

The dataset includes the following files:
========================================

- 'codebook.md': a markdown file explaining the R script ('run_analysis.R') written for this course, as well as its tidy outputs ('run_analysis_output_A.csv' and 'run_analysis_output_B.csv')

- 'run_analysis.R':  an R script, written to perform the following required steps for the JHU Data Science class "Getting and Cleaning Data" final project
    1. Merges the training and the test sets to create one data set.
    2. Extracts only the measurements on the mean and standard deviation for each measurement.
    3. Uses descriptive activity names to name the activities in the data set
    4. Appropriately labels the data set with descriptive variable names.  
    5. Creates an independent tidy data set with the average of each variable for each activity and each subject.

- 'run_analysis_output_A.csv':  .csv table representing the dataset created by steps 1-4 above

- 'run_analysis_output_B.csv'  .csv table representing the dataset created by steps 1-5 above



The dataset requires the following files provided by the parties cited below.  The files must be extracted from the following zip file into a filestructure relative to your working directory, as indicated by filenames below.  
Please obtain these files from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip   (these files were considered too large to justify uploading copies for this project)
=========================================

-  'train/subject_train.txt': I.D of subjects 1-30 in training dataset
  
-  'test/subject_test.txt':  I.D of subjects 1-30 in test dataset

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.



For more information about this dataset contact: activityrecognition@smartlab.ws

License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.




Note to graders:  The script included "run_analysis.R" achieves the requirements of this course assignment (though in a slightly different order, which doesn't affect output.)  Please feel free to try it.