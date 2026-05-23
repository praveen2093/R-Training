# Divide dataset
#========================================================================================

DataNumeric <- function(dataset)
{ 
  dataNum <- dataset[,sapply(dataset, function(x) is.numeric(x) | is.integer(x))]
  return(dataNum)
}

DatanonNumeric <- function(dataset)
{ 
  datanonNum <- dataset[,sapply(dataset, function(x) is.character(x) | is.factor(x) | is.logical(x))]
  return(datanonNum)
}

custdata <- read.table(file = "C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Eight\\CustomerData.txt",header = TRUE,sep = "\t",na.strings = c("",NA))

head(DataNumeric(dataset = custdata))
head(DatanonNumeric(dataset = custdata))

# Merge 
#================================================================================
filenames <- list.files("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Six\\Tutorial Five-Six\\Assignment Six Question 2")

data <- NULL
for( i in filenames)
{
  data <- rbind(data,read.csv(paste("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Six\\Tutorial Five-Six\\Assignment Six Question 2","\\",i,sep="")))
}

data
unique(data)

data.as.List <- list()
for(i in filenames)
{
  data.as.List[[i]] <- read.csv(paste("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Six\\Tutorial Five-Six\\Assignment Six Question 2","\\",i,sep=""))
}

sapply(data.as.List,function(x) apply(x[,2:3],2,mean))
t(sapply(data.as.List,function(x) apply(x[,2:3],2,mean)))
