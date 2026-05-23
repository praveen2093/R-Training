# Data Structures

#==================================================================================

#Creating vectors
x<-c(1,2,3) #Numeric vector
x1<-c("one","two","three") #Character vector
x2<-c(TRUE,FALSE,TRUE) #Logical Vector
x3<-c(1L,2L,3L)    #Integer Vector

#Extracting vectors
x1[c(1,3)] #1st & 3rd element of x1

#=================================================================================

#Creating matrices
y<-matrix(1:30,nrow=5,ncol=6) #Filled columnwise by default
y1<-matrix(1:30,nrow=5,ncol=6,byrow=TRUE)  #Filled rowwise

#Alt
y2<-1:30
dim(y2)<-c(5,6)

#Alt
y3<-cbind(1:5,6:10,11:15,16:20,21:25,26:30)

#Extracting matrix elements
y[2,]
y[,4]
y[1,5]
y[c(1,3),c(4,5)]

#=================================================================================

#Creating arrays
z<-array(1:30,c(2,3,5))

#Extracting array elements
z[2,3,4]

#=================================================================================

#Creating data frames
student.roll<-c(11,23,56)
student.name<-c("Spandan","Sreya","Dhritiman")
student.marks<-c(56,76,76)
student.gender<-c("M","F","M")
student<-data.frame(student.roll,student.name,student.marks,student.gender)

#Extracting data frame elements
student[,2:3]
student[c(1,3),]
student[3,4]
student[,4]
student[,"student.gender"]
student$student.gender

#=================================================================================

#Creating Lists
list.all<-list(vector=x,matrix=y2,array=z,data=student)

#Extracting list elements
list.all[[2]]
list.all[["matrix"]]
list.all$matrix
list.all[[4]][,3]
list.all[c(1,4)]

#=================================================================================

#Factors
f<-c(1:3,1,2,1,2,1,3,3)
f1<-factor(f)
f2<-factor(f,order=TRUE)
fc<-c("Average","Good","Excellent","Average")
fc.factor<-factor(fc)
fc.factor1<-factor(fc,levels=c("Excellent","Good","Average","Poor"),ordered = TRUE)

#=================================================================================

