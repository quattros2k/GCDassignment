======================================================================================================================================
The following describes the steps performed by "run_analysis.R":


Loads package "dplyr" 

Sets Working directory  (Please be sure to use ""~/Coursera Data Science/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset" as the working directory, if testing script)
  
Clears any previously stored variables
  
Aeads test and training files into memory (see descriptions of these contained in README.txt)
  "activity_labels.txt"
  "features.txt"
  "train/subject_train.txt"
  "test/subject_test.txt"

Assigns column names to training data (see descriptions of these contained in README.txt)
  "train/X_train.txt" (data)
  "train/y_train.txt" (column names)

Assigns column names to test data (see descriptions of these contained in README.txt)
  "test/X_test.txt" (data)
  "test/y_test.txt" (column names)

adds column name "subject" to subject tables 

Adds column names "activity number" and "activity label" activity tables
  
Adds the subject columns to the xtrain and xtest tables

Adds the activity labels to the activity tables and names them

Adds activity column to xtrain2 and xtest2, and assigns "activity name" label to new column

Merges the enhanced training and test sets together

Filters dataset to include only those columns (variables) that contain "std" or "mean," preserving "subject" and "activity name" 

Cleans variable names: 
	Make all variables lower case
	Removes "." - replace with " "    
	Replaces "t" with "time ", for labels beginning with "t"
	Replaces "f" with "frequency ", for labels beginning with "f"
	
Outputs file named "run_analysis_output_A.csv"

Groups by subject and activity, and calculate means
  
Outputs file named "run_analysis_output_B.csv"


======================================================================================================================================

Description of outputs of "run_analysis.R", by column and column group.  Output files (included) are "run_analysis_output_A.csv" and "run_analysis_output_B.csv".
	

Subject:	

Unique identifier representing each of 30 individual test subjects (names removed to protect true identity)


Activity name:	

Description of activity being performed during data collection
	

Time Domain Features (Column names below):

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals ""time acc-XYZ"" and ""time gyro-XYZ."" These time domain signals were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (""time bodyacc-XYZ"" and ""time gravityacc-XYZ"") using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (""time bodyacjJerk-XYZ"" and ""time bodygyroJerk-XYZ""). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (""time bodyaccmag"", ""time gravityaccmag"", ""time bodyaccjerkmag"", ""time bodygyromag"", ""time bodygyrojerkmag"").  

Notes:

- The Standard Deviation and Mean are calculated for each of these, and included in this dataset.  These are indicated with ""mean"" or ""std"" in the feature name."
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.    [1]


time bodyacc mean   x	
time bodyacc mean   y	
time bodyacc mean   z	
time bodyacc std   x	
time bodyacc std   y	
time bodyacc std   z	
time gravityacc mean   x	
time gravityacc mean   y	
time gravityacc mean   z	
time gravityacc std   x	
time gravityacc std   y	
time gravityacc std   z	
time bodyaccjerk mean   x	
time bodyaccjerk mean   y	
time bodyaccjerk mean   z	
time bodyaccjerk std   x	
time bodyaccjerk std   y	
time bodyaccjerk std   z	
time bodygyro mean   x	
time bodygyro mean   y	
time bodygyro mean   z	
time bodygyro std   x	
time bodygyro std   y	
time bodygyro std   z	
time bodygyrojerk mean   x	
time bodygyrojerk mean   y	
time bodygyrojerk mean   z	
time bodygyrojerk std   x	
time bodygyrojerk std   y	
time bodygyrojerk std   z	
time bodyaccmag mean  	
time bodyaccmag std  	
time gravityaccmag mean  	
time gravityaccmag std  	
time bodyaccjerkmag mean  	
time bodyaccjerkmag std  	
time bodygyromag mean  	
time bodygyromag std  	
time bodygyrojerkmag mean  	
time bodygyrojerkmag std 

 	
Frequency Domain Features (Columns names below):


	A Fast Fourier Transform (FFT) was applied to some of these signals producing features "frequency bodyacc-XYZ", "frequency bodyaccjerk-XYZ", "frequency bodygyro-XYZ", "frequency bodyaccjerkmag", "frequency bodygyromag", "frequency bodygyrojerkmag".  Note - the Standard Deviation and Mean are calculated for each of these, and included in this dataset.  These are indicated with "mean" or "std" in the feature name.

Notes:

- The Standard Deviation and Mean are calculated for each of these, and included in this dataset.  These are indicated with ""mean"" or ""std"" in the feature name."
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.   [1]

frequency bodyacc mean   x	
frequency bodyacc mean   y	
frequency bodyacc mean   z	
frequency bodyacc std   x	
frequency bodyacc std   y	
frequency bodyacc std   z	
frequency bodyacc meanfreq   x	
frequency bodyacc meanfreq   y	
frequency bodyacc meanfreq   z	
frequency bodyaccjerk mean   x	
frequency bodyaccjerk mean   y	
frequency bodyaccjerk mean   z	
frequency bodyaccjerk std   x	
frequency bodyaccjerk std   y	
frequency bodyaccjerk std   z	
frequency bodyaccjerk meanfreq   x	
frequency bodyaccjerk meanfreq   y	
frequency bodyaccjerk meanfreq   z	
frequency bodygyro mean   x	
frequency bodygyro mean   y	
frequency bodygyro mean   z	
frequency bodygyro std   x	
frequency bodygyro std   y	
frequency bodygyro std   z	
frequency bodygyro meanfreq   x	
frequency bodygyro meanfreq   y	
frequency bodygyro meanfreq   z	
frequency bodyaccmag mean  	
frequency bodyaccmag std  	
frequency bodyaccmag meanfreq  	
frequency bodybodyaccjerkmag mean  	
frequency bodybodyaccjerkmag std  	
frequency bodybodyaccjerkmag meanfreq  	
frequency bodybodygyromag mean  	
frequency bodybodygyromag std  	
frequency bodybodygyromag meanfreq  	
frequency bodybodygyrojerkmag mean  	
frequency bodybodygyrojerkmag std  	
frequency bodybodygyrojerkmag meanfreq  	
	


Additional vectors (Columns named below - names containing "...tbody..." were derived from time-domain features of similar names) :

Additional vectors were obtained by averaging the signals in a signal window sample. These are applied to the angle between two vectors [1]

Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

angle tbodyaccmean gravity 	
angle tbodyaccjerkmean  gravitymean 	
angle tbodygyromean gravitymean 	
angle tbodygyrojerkmean gravitymean 	
angle x gravitymean 	
angle y gravitymean 	
angle z gravitymean 	


"All signals above were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions."[1]
	
	
	
	
	
	
	
	
	
	Cited text and associated datasets (excluding "run_analysis.R", "run_analysis_output_A.csv" and "run_analysis_output_B.csv") credited to:  
	[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
	
	This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
	
	Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


