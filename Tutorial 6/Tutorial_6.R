#Importing data 
#===============================================================================
library(ggplot2)
data <- read.csv("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Five\\leadership data.csv",header = TRUE,na.strings = c(""))
str(data)
data$Name <- as.character(data$Name)
data$Manager.ID <- as.character(data$Manager.ID)
data <- unique(data)
data$Income<-c(100,100,150,150,50,150,100)
data$Experience <-c(1,2,20,10,5,3,14)


# Continuous Data

# Measures of Central Tendency
#================================================================================
mean(data$Age)
sapply(data,mean,na.rm=TRUE)
sapply(data[,5:11],mean,na.rm=TRUE)

weights <- c(0.1,0.2,0.1,0.3,0.1,0.1,0.05,0.05)
weighted.mean(data$Age,weights)

mean(c(2, 4, 6, 7, 11, 21, 81, 90, 105, 121),trim=0.4)

median(data$Age)
sapply(data[,5:11],median,na.rm=TRUE)

# Measures of Dispersion
#================================================================================
range(data$Age)
diff(range(data$Age))
range(data$Age)[2] -range(data$Age)[1]

quantile(x = data$Age)
quantile(x = data$Age,probs = seq(0,1,0.25))
quantile(x = data$Age,probs = seq(0,1,0.1))
quantile(x = data$Age,probs = seq(0,1,0.01))

sapply(data[,5:11],quantile,na.rm=TRUE)
sapply(data[,5:11],function(x) quantile(x,probs = seq(0,1,0.1),na.rm=TRUE))

var(data$Age)
sd(data$Age)
sapply(data[,5:11],sd,na.rm=TRUE)

IQR(data$Age)
sapply(data[,5:11],IQR,na.rm=TRUE)

summary(data$Age)
summary(data)
sapply(data,summary)

#Get more summary statistics
options(digits=2)
library(pastecs)
stat.desc(data)
stat.num<-stat.desc(data)[,-(1:4)]
stat.num
t(stat.num)

#Boxplot
boxplot(data$Age)
boxplot(data$Age,horizontal = TRUE)
boxplot(data$Age,horizontal = TRUE,col="blue")
boxplot(data$Age,horizontal = TRUE,col="blue",main="Boxplot of Age",xlab= "Values of Age",outcol="red",pch=20,cex=1.5)
boxplot.stats(data$Age)
?par
boxplot(data[,6:10],col= c("blue","red","grey","green","violet"))


#Histogram
hist(data$Age)
hist(data$Age,breaks = 3)
library(ggplot2)
ggplot(data=data,aes(x=Age))+geom_histogram(binwidth = 20,colour = "black" , fill= "white")+labs(x = "Age")+ggtitle("Boxplot of Age")

# Scatter plot
plot(data$Age)
plot(data$Age,type="b")
plot(data$Age,type="b",col="blue",pch=20,ylab="Age")
plot(x = data$Age,y = data$Experience,pch=20,col="red")


#Categorical Data
#============================================================================

table(data$Gender)
table(data$Gender,useNA = "always")
xtabs(~Gender,data)

tab <- table(data$Gender,data$Country)
addmargins(tab)
prop.table(tab)
prop.table(tab,1)
prop.table(tab,2)

tab1 <- xtabs(~Gender+Country,data=data)
addmargins(tab1)
prop.table(tab1)
prop.table(tab1,1)
prop.table(tab1,2)

aggregate(Age~Country,data = data,mean)
aggregate(Age~Country+Gender,data = data,mean)
aggregate(cbind(Age,Income)~Country,data = data,mean)
aggregate(cbind(Age,Income)~Country+Gender,data = data,mean)


# Dividing into chunks
split(data,list(data$Gender))
split(data,list(data$Gender,data$Country))

lapply(data[,6:11],mean)
lapply(split(data,list(data$Gender)),summary)
lapply(split(data,list(data$Gender)),dim)
lapply(split(data,list(data$Gender,data$Country)),summary)
