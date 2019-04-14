library(data.table)
library(dplyr)

#Reading the training data
trainX<-read.table("./train/X_train.txt")
trainY<-read.table("./train/y_train.txt")
subject_train<-read.table("./train/subject_train.txt")

#Reading the test data
testX<-read.table("./test/X_test.txt")
testY<-read.table("./test/y_test.txt")
subject_test<-read.table("./test/subject_test.txt")

#Description of the data
variable_names<-read.table("./features.txt")
activity_labels<-read.table("./activity_labels.txt")

#1.) Merging of Training and Test Data
totalX<-rbind(trainX,testX)
totalY<-rbind(trainY,testY)
subject_total<-rbind(subject_train,subject_test)

#2.) Get only the mean and standard deviation(std) for each measurement
desired_variables<-variable_names[grep(".mean\\(.|.std\\(",variable_names[,2]),]
desiredX<-totalX[,desired_variables[,1]]

#3.) Use descriptive activity names to name the activities
colnames(totalY)<-"activity"
totalY$activitylabel<-factor(totalY$activity,labels=as.character(activity_labels[,2]))
activitylabels<-totalY$activitylabel
activitylabels

#4.) Appropriately labels the data set with descriptive variable names.
colnames(desiredX)<-desired_variables[,2]

#5.) From the data set in step 4, creates a second, independent tidy data set
# with the average of each variable for each activity and each subject.
colnames(subject_total)<-"subject"
final<-cbind(desiredX,activitylabels,subject_total)
finalmean<-final %>% group_by(activitylabels,subject) %>% summarize_all(funs(mean))
write.table(finalmean,file="./tidydata.txt",row.names = FALSE,col.names = TRUE)