##
## config_run_analysis
## Author: Malatesh

## in order to keep clean this script, I have created a configuration file
## by separately to help you to customize the use of run_analyzis script, 
## please go to README file for more details and examples

## Global variables
dirSeparator<-"/"
urlDataSource<<-"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
zipFileName<<-"UCI_HAR_Dataset.zip"
workingDirectory<<-getwd()
datasetsDirectory <<-paste("UCI HAR Dataset",dirSeparator,sep="")
datasetFileType<<-".txt"

### Datasets source files
feautresInfoFile <- paste("features_info",datasetFileType,sep="")
featuresFile <- paste("features",datasetFileType,sep="")
activityLabels <- paste("activity_labels",datasetFileType,sep="")
trainId<-"train"
testId<-"test"
trainDir<-paste(datasetsDirectory,trainId,"/",sep="")
testDir<-paste(datasetsDirectory,testId,"/",sep="")
properLabels<-c("^t"="time",
                "^f"="frequency",
                "Acc"="accelerometer",
                "Gyro"="gyroscope",
                "Mag"="magnitude",
                "BodyBody"="body")

### Error messages
readmeFile<<-"please go to README.md file for more info"
zipError<<-"Data source does not exists"
dirError<<-"Directory UCI HAR Dataset does not exists, trying to generate it"
fileError<<-paste(": file does not exists, ",readmeFile)