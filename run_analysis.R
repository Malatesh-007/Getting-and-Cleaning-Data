##
## run_analysis
## Author: Malatesh

library(plyr)
library(dplyr)

## I am using config and tools script in separated files in order to keep clean and readable this script
## please go to README file for more details
## Sourcing config values
source("config_run_analysis.R")
## Sourcing tools used by this script
source("tools_run_analysis.R")

## runAnalysis function generates the new dataset
## output dataset
runAnalysis<-function(){
    message("Do you want a coffee?...")
    initialize()
    # 1 Merges the training and the test sets to create one data set.
    datasetMerged<<-mergesDataset()
    # 2 Extracts only the measurements on the mean and standard deviation for each measurement. 
    theSubset<<-extractMeanStdsubset()
    # 3 Uses descriptive activity names to name the activities in the data set
    theSubset<<-addingDescriptiveActivityLabels()
    # 4 Appropriately labels the data set with descriptive variable names. 
    theSubset<<-addingPropperLabelsDataset()
    # 5 From the data set in step 4, creates a second, independent tidy data set with the average of 
    #   each variable for each activity and each subject.
    message("just a little bit more!!...")
    createFinalDataset()
    message("time flies when you want a capuccino!!...")
    theSubset
}
createFinalDataset<-function(){
    finalDataset<-aggregate(. ~subject + activity, theSubset, mean)
    finalDataset<-finalDataset[order(finalDataset$subject,finalDataset$activity),]
    write.table(finalDataset, file = "myTidyDataset.txt",row.name=FALSE)
}
addingPropperLabelsDataset<-function(){
    ## TO DO: use associative array and for loop in order to do in just one line of code
    names(theSubset)<-gsub("^t", "time", names(theSubset))
    names(theSubset)<-gsub("^f", "frequency", names(theSubset))
    names(theSubset)<-gsub("Acc", "accelerometer", names(theSubset))
    names(theSubset)<-gsub("Gyro", "gyroscope", names(theSubset))
    names(theSubset)<-gsub("Mag", "magnitude", names(theSubset))
    names(theSubset)<-gsub("BodyBody", "body", names(theSubset))
    theSubset
}
addingDescriptiveActivityLabels<-function(){
    descriptiveActivityLabels<-activityLabels()
    id=1
    for(label in descriptiveActivityLabels$V2) {
        theSubset$activity <- gsub(id, label, theSubset$activity)
        id<-id + 1
    }
    theSubset
} 
extractMeanStdsubset<-function(){
    resultado<-datasetFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)",datasetFeaturesNames$V2)]
    labels<-c(as.character(resultado), "subject", "activity" )
    resultSubset<-subset(datasetMerged,select=labels)
    resultSubset
}
mergesDataset<-function(){
    # reading data from files and storing into variables
    # testActivities, testFeatures, testSubjects, trainActivities, trainFeatures, trainSubjects 
    # are into tools_run_analysis.R
    # Reading TESTS datasets
    testActivitiesDataset<-testActivities()
    testFeaturesDataset<-testFeatures()
    testSubjectsDataset<-testSubjects()
    # Reading TRAINING datasets
    trainingActivitiesDataset<-trainingActivities()
    trainingFeaturesDataset<-trainingFeatures()
    trainingSubjectsDataset<-trainingSubjects()
    # Reading features names, i am assigning those names a global object in order to be used in 
    # to extract the mean and standard deviation
    datasetFeaturesNames<<-featuresNames()
    # merging training and test datasets
    activities<-rbind(trainingActivitiesDataset, testActivitiesDataset)
    features<-rbind(trainingFeaturesDataset, testFeaturesDataset)
    subjects<-rbind(trainingSubjectsDataset, testSubjectsDataset)
    # assing names to datasets
    names(activities)<-c("activity")
    names(features)<-datasetFeaturesNames$V2
    names(subjects)<-c("subject")
    # mergin final dataset
    datasetsSubjectActivityMerge<-cbind(subjects, activities)
    datasetMerged<-cbind(features, datasetsSubjectActivityMerge)
    datasetMerged
}
## Initializing working directories and Dataset files, 
## this function should validate your Working directory structure also Dataset sources
## if not exists, then whould try to download and run a unzip
initialize <- function(){
    prepareDirectoryStructure()    
}
