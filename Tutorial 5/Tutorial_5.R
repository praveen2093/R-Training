3==3
3<3
3<=3
3>3
3>=3
3!=3

x<- 1:10
x>5
x%%2==0
x>5 & x%%2==0
x>5 | x%%2==0
x>5 && x%%2==0
x>0 && x%%2!=0
x>5 || x%%2==0
x>0 || x%%2!=0
any(x>5)
all(x>5)

#Loops
#=================================================================

#Vectorized ifelse
#=====================================================================
x<- c(3,2,6,1,-4,-2,-3)
ifelse(x>0,"Positive Number","Negative Number")
ifelse(x>0,"Positive Number",ifelse(x%%2==0,"Negative Even Number","Negative Odd Number"))

# If 
#======================================================================
toCheck = 5
if(toCheck==5)
 {
  "Five"
 }

# If-else
#=======================================================================
if(toCheck==5)
 {
  "Five"
 }else
 {
  "The number is not five"
 }

#Nested if-else
#================================================================
if(toCheck==5)
 {
  "Five"
 }else if(toCheck==0)
 {
  "Zero"
 }else
 {
   "Number not 0 or 5"
 }

#while
#==================================================================
x<-1
while(x <=5)
{
  print(x)
  x=x+1
}

# for 
#==================================================================

for (i in 1:5)
 {
  print(i)
 }

y <- c(33,22,66,11,42,35,76)
for(j in y )
 {
  print(j)
 }

for(i in 1:length(y))
 {
  print(y[i])
 }
  
sumNos =0
for(i in 1:length(y))
{
  sumNos =sumNos+y[i]
}

x<- c(3,2,6,1,-4,-2,-3)
for(i in x)
{
  if(i > 0)
  {
    print("Positive Number")
  }else if(i%%2 == 0)
  {
    print("Negative Even Number")
  }else
  {
    print("Negative Odd Number")
  }
}

# Break & Next
#============================================================
for(i in 1:5)
{
  if(i==3)
  {
    break
  }
  print(i)
}

for(i in 1:5)
{
  if(i==3)
  {
    next
  }
  print(i)
}

#Switch
#====================================================================

grades <- c("A","B","D","D","C")
for(i in 1:length(grades))
  {
   print(switch(grades[i],"A"="Excellent","B"="Good","Mediocre"))
  }


# Functions
#======================================================================

FirstFn <- function()
{
  print("Functions in R!!!")
}
FirstFn()

Example<- c(3,2,6,1,-4,-2,-3)
Average <- function(x)
{
  sum = 0
  for(i in 1:length(x))
  {
    sum = sum +x[i]
  }
  avg = sum/length(x)
  return(avg)
}
Average(Example)
mean(Example)



data <- read.csv("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Five\\leadership data.csv",header = TRUE,na.strings = c(""))

ExtractFn <- function(pos,dataName)
{
  dataName[,pos]
}
ExtractFn(pos = 2:6,dataName = data)


na.omit(data)
NA.OMIT <- function(dataset)
{
  for(i in 1: dim(dataset)[1])
  {
    if(sum(is.na(dataset[i,]))!=0)
    {
      dataset<- dataset[-i,]
    }
  }
  return(dataset)
}
 
# Apply & Sapply
#===========================================================================
apply(data[,6:10],2,mean)
apply(data[,6:10],2,mean,na.rm=TRUE)
apply(data[,6:10],2,function(x) mean(x,na.rm = TRUE))
apply(data[,6:10],1,sum)

apply(data,1,function(x) x[1])
apply(data,1,function(x) sum(is.na(x))==0)
data[apply(data,1,function(x) sum(is.na(x))==0),]
apply(data,1,function(x) any(sum(is.na(x))==0))
data[apply(data,1,function(x) any(sum(is.na(x))==0)),]

sapply(data[,6:10],mean)
sapply(data, class)
sapply(data,unique)
sapply(data[,6:10], function(x) max(x,na.rm=TRUE)+min(x,na.rm=TRUE) )

