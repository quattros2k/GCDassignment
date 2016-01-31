#the following assumes package "dplyr" is installed and loaded
library('dplyr')
#Set Working directory
  setwd("~/Coursera Data Science/Getting and Cleaning Data/Assignment/getdata_projectfiles_UCI HAR Dataset/UCI HAR Dataset")
#clear all previous variables
  rm(list=ls())
  #read test and training files into variables
  activitylabels <- read.table("activity_labels.txt")
  features <- read.table("features.txt")
  subjtrain <- read.table("train/subject_train.txt")
  subjtest <- read.table("test/subject_test.txt")
  #note: the following assigns column names from the "Features" table
  xtrain <- read.table("train/X_train.txt", col.names = features [,2]) 
  ytrain <- read.table("train/y_train.txt")
  #note: the following assigns column names from the "Features" table
  xtest <- read.table("test/X_test.txt", col.names = features [,2]) 
  ytest <- read.table("test/y_test.txt")
  #add column name to subject tables 
  colnames(subjtest)[1] <- "subject"
  colnames(subjtrain)[1] <- "subject"
  #add column names to activitylabels
  colnames(activitylabels) <- c("activity number", "activity label")
  #add column name to activity tables 
  colnames(ytest)[1] <- "activity number"
  colnames(ytrain)[1] <- "activity number"
  #adds the subject columns to the xtrain and xtest tables
  xtest2 <- cbind(xtest, subjtest)
  xtrain2 <- cbind(xtrain, subjtrain)
  #adds the activity labels to the activity tables and names them
  ytrain2 <- left_join(ytrain, activitylabels, by = "activity number")
  colnames(ytrain2) <- c("activity number", "activity label")
  ytest2 <- left_join(ytest, activitylabels, by = "activity number")
  colnames(ytest2) <- c("activity number", "activity label")
  #adds activity column to xtrain2 and xtest2, and assigns "activity name" label to new column
  xtest3 <- cbind(xtest2, ytest2 [,2])
  colnames(xtest3)[ncol(xtest3)] <- "activity name"
  xtrain3 <- cbind(xtrain2, ytrain2 [,2])
  colnames(xtrain3)[ncol(xtrain3)] <- "activity name"
  #Merge the enhanced training and test sets together
  xmerged <- merge(xtest3, xtrain3, all = TRUE)
  ncol(xmerged)
  nrow (xmerged)
  ##
  ##
  #select only those columns (variables) that contain "std" or "mean," preserving "subject" and "activity name" 
  ##
  ##
  stdmean <- select(xmerged, matches('std|mean|subject|activity name', ignore.case=TRUE))
  #
  #Clean variable names: Make all variables lower case
  names(stdmean) <- tolower(names(stdmean))
  #Clean variable names: removes "." - replace with " "    
  names(stdmean) <- gsub("\\."," ",names(stdmean))
  #replace "t" with "time "
  names(stdmean) <- gsub("^t","time ",names(stdmean))
  #replace "f" with "frequency "
  names(stdmean) <- gsub("^f","frequency ",names(stdmean))
  #writes output file named "run_analysis_output_A.csv"
write.csv(stdmean, file="run_analysis_output_A.csv")  
  # group by subject and activity, and calculate means
  stdmean2 <- stdmean %>% group_by(subject, `activity name`) %>% summarise_each(funs(mean), -subject, -`activity name`)
#writes output file named "run_analysis_output_B.csv"
  write.csv(stdmean2, file="run_analysis_output_B.csv")
  #writes output file named "run_analysis_output_B.txt" - used only as submission for course
  write.table(stdmean2, file="run_analysis_output_B.txt", row.name=FALSE)
  