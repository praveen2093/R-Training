# Data Frames 
#===============================================================================

#Importing data 
#===============================================================================

data <- read.csv("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Five\\leadership data.csv",header = TRUE,na.strings = c(""))
data

# Data sanity check
#===============================================================================

head(data,2)
tail(data)
dim(data) # Dimensions of data
NROW(data) # dim(data)[1]
nrow(data)
length(data) # dim(data)[2]
ncol(data)
str(data)  # Structure of the data

# Extract elements
#=====================================================================

data[,2]
data$Name
data[,"Name"]
data[,c(4,3)]
data[c(1:2,5),]

# Changing data types as required
#======================================================================

data[,1] <- as.character(data[,1])
data$Name <- as.character(data$Name)
class(data[,1])
class(data$Name)
is.character(data[,1])
is.character(data$Name)

# Removing duplicate records
#=======================================================================

duplicated(data$Manager.ID)
data[!duplicated(data$Manager.ID),] 
data[!duplicated(data),] 
data <- unique(data)

#Appending data columns
#========================================================================

data$Income<-c(100,100,150,150,50,150,100)
Experience <-c(1,2,20,10,5,3,14)
data <- data.frame(data[,1:4],Experience,data[,5:11])

#Column headers
#========================================================================
names(data)

#Editing column names
names(data)[7:11]<-c("Item1","Item2","Item3","Item4","Item5")

#Recoding variables
#=========================================================================

#Option 1
data$Age[data$Age==99]<-NA

data$Age.category[data$Age<30]<-"Junior"
data$Age.category[data$Age >=30 & data$Age <40]<-"Midlevel"
data$Age.category[data$Age >=40]<-"Senior"

#Option 2
data$Age.category <-ifelse(data$Age==99,NA,ifelse(data$Age<30,"Junior",ifelse(data$Age<40,"Midlevel","Senior")))

data$Age.category<-factor(data$Age.category,levels=c("Junior","Midlevel","Senior"),ordered=TRUE)

#Option 3
library(car)
data$Age.category <- recode(data$Age,"99 = NA ;0:30 = 'Junior';30:39 = 'Midlevel'; 40:100 = 'Senior'",as.factor.result = TRUE,levels=c("Junior","Midlevel","Senior"))

#Delete missing observations
#=======================================================================

is.na(data$Gender)
sum(is.na(data$Gender))
data[!is.na(data$Gender),]
newdata <- na.omit(data)

#Sorting data
#========================================================================

data[order(data$Age),]
data[order(data$Age,na.last = FALSE), ]
data[order(data$Age,decreasing=TRUE),]
data[order(data$Age,data$Income),]
data[order(data$Age,-data$Income),]

#Subsetting data
#=========================================================================

data[,5:9]
data[,-(5:9)]

#Dropping variables
#==========================================================================
data$Age.category<-NULL

#Selecting observations
#==========================================================================
data[data$Country=="UK",]
data[data$Manager.ID %in% c("4066","2198"),]
data[data$Country=="UK"& data$Experience>5,]
data[data$Age>30,]
subset(data,data$Age>30)
subset(data,data$Age>30,select=c("Country","Income"))

#Merging 
#=======================================================================

data2<-read.csv("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Five\\leadership data2.csv",header=TRUE)
#Inner join
merge(data,data2,by="Manager.ID")
#Full join
merge(data,data2,by="Manager.ID",all=TRUE)
#Left join
merge(data,data2,by="Manager.ID",all.x=TRUE)
#Right join
merge(data,data2,by="Manager.ID",all.y=TRUE)

library(plyr)
join(data,data2,by = "Manager.ID",type = "inner")
join(data,data2,by = "Manager.ID",type = "full")
join(data,data2,by = "Manager.ID",type = "left")
join(data,data2,by = "Manager.ID",type = "right")

library(sqldf)
names(data)[1]<-"Manager_ID"
names(data2)[1]<-"Manager_ID"
sqldf("select * from data  inner join data2 using (Manager_ID) ")
sqldf("select * from data  left join data2 using (Manager_ID) ")

# Apply & Sapply
#===========================================================================
apply(data[,7:11],2,mean)
apply(data[,7:11],2,mean,na.rm=TRUE)
apply(data[,7:11],2,function(x) mean(x,na.rm = TRUE))
apply(data[,7:11],1,sum)

apply(data,2,function(x) sum(is.na(x)))
apply(data,1,function(x) x[1])

sapply(data[,7:11],mean)
sapply(data, class)
sapply(data,unique)
sapply(data[,7:11], function(x) max(x,na.rm=TRUE)+min(x,na.rm=TRUE) )

