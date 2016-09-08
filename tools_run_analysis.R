##
## tools_run_analysis
## Author: Malatesh
## This scripts contains functions used into run_analysis.R scripts
## this intends to offer more clear, clean and readable code also is my first approach
## to generate a reusable code library to be used in due Data Science training course

## In order to keep clean my code, i have prepared this script with tools for general use, as file validations 
## dowload and uzip functionality
## please go to README file for more details and examples

## TO DO: prepare as reusable code
prepareDirectoryStructure<-function(){
    if(!existDataSourceDir()){
        unzipDatasetFileSource()
    }
    message("READY TO GO!")
}
existDataSourceDir<-function(){
    if(!fileDirValidation(datasetsDirectory)){
        message(dirError)
        FALSE
    }else{
        TRUE
    }
}
existsDataSourceFile<-function(){
    if(!fileDirValidation(zipFileName)){
        message(zipError)
        FALSE
    }else{
        TRUE
    }
}
unzipDatasetFileSource<-function(){
    if(!existsDataSourceFile()){
        downloadDataSource()
    }
    message(paste("Extracting dataset source directory in: ",workingDirectory, datasetsDirectory))
    result<-tryCatch({
        unzip(zipFileName)
    },warning=function(warn){
        message(paste("UNZIP_WARNING: " , warn))
    },error=function(err){
        message(paste("UNZIP_ERROR: " , err,"\\n Please Try to unzip manually"))
        message(readmeFile)
    },finaly={
        message("Extracting file")
    }) 
}
downloadDataSource<-function(){
    result<-tryCatch({
        download.file(urlDataSource,zipFileName,"curl")    
    },warning=function(warn){
        message(paste("DOWNLOAD_WARNING: " , warn))
    },error=function(err){
        message(paste("DOWNLOAD_ERROR: " , err,"\n Try to download and unzip manually"))
        message(readmeFile)
    },finaly={
        message("Starting download")
    }) 
}
fileDirValidation<-function(sourceName){
    file.exists(sourceName)
}
trainingActivities<-function(){
    result<-read.dataset(paste(trainDir,"y_",trainId,datasetFileType,sep=""))
    result
}
trainingFeatures<-function(){
    result<-read.dataset(paste(trainDir,"X_",trainId,datasetFileType,sep=""))
    result
}
trainingSubjects<-function(){
    result<-read.dataset(paste(trainDir,"subject_",trainId,datasetFileType,sep=""))
    result
}
testActivities<-function(){
    result<-read.dataset(paste(testDir,"y_",testId,datasetFileType,sep=""))
    result
}
testFeatures<-function(){
    result<-read.dataset(paste(testDir,"X_",testId,datasetFileType,sep=""))
    result
}
testSubjects<-function(){
    result<-read.dataset(paste(testDir,"subject_",testId,datasetFileType,sep=""))
    result
}
featuresNames<-function(){
    result <- read.dataset(paste(datasetsDirectory,"features",datasetFileType,sep=""))
    result
}
activityLabels<-function(){
    result <- read.dataset(paste(datasetsDirectory,"activity_labels",datasetFileType,sep=""))
    result
}
read.dataset<-function(file){
    result<-read.table(file,header = FALSE)
    result
}