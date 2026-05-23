# Assignment 2
#=============================================================================

# Question 1
#----------------------------------------------------------------------------

library(DAAG)
data(ais)
ais

subset(ais,sport=="Row")
subset(ais , sport %in% c("Row","Netball","Tennis"))
subset(ais, sport=="B_Ball" & sex=="f")

#Question 2
#-----------------------------------------------------------------------------

Name <- c("Dhoni","Virat","Clarke","McCullum","Vettori","ABD")
Age <- c(33,26,32,32,36,31)
Captain.Status <- c(TRUE,FALSE,TRUE,TRUE,FALSE,TRUE)
Matches <- c(210L,100L,150L,176L,201L,189L)
Role <- factor(c("WK","RHB","RHB","RHB","LAS","RHB"))

#Create dataset
Cricket.df <- data.frame(Name,Age,Captain.Status,Matches,Role,stringsAsFactors = FALSE)

#Check datatype
sapply(Cricket.df,class)

#Dataframe to list
Cricket.lst <- as.list(Cricket.df)

#List to DataFrame
Cricket.df1 <- as.data.frame(Cricket.lst)

# Question 3
#-------------------------------------------------------------------------

`11` <- matrix(1:9,3,3)
diag(`11`)
