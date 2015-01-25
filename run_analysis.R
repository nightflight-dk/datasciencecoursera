run_analysis <- function(){
  test<-read.table("test\\X_test.txt")
  train<-read.table("train\\X_train.txt")
  
  ft<-read.table("features.txt",sep=" ")
  ffilter<-grepl("-std()",ft$V2,fixed=TRUE) | grepl("-mean()",ft$V2,fixed=TRUE)
  
  #1/2 Merges the training and the test sets to create one data set.
  clean<-rbind(test[,ffilter],train[,ffilter])
  remove(test)
  remove(train)
  
  #3/4 labels the data set with descriptive variable names
  colNames<-as.character(ft[ffilter,2])
  clean<-setNames(clean,colNames)  
  
  #5 creates a new dataset with means for every above feature
  means<-colMeans(clean)
  
  return(means)
}