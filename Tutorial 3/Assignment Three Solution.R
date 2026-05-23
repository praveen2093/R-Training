#Assignment Three
#=====================================================================

#Question 1
#---------------------------------------------------------------------

options(scipen = 100)
#a
(0.1)^seq(from = 3,to = 36,by = 3)*(0.2)^seq(from = 1,to = 34,by = 3)

#b
2^(1:25)/(1:25)

#c
set.seed(50)
xVec <- sample(0:999, 250, replace=T)
yVec <- sample(0:999, 250, replace=T)

yVec[yVec>600]
which(yVec>600)
xVec[yVec>600]
xVec[order(yVec)]
yVec[seq(from = 1,to = length(yVec),by=3)]

# Question 2
#--------------------------------------------------------------------------

fileUrl <- "https://onlinecourses.science.psu.edu/stat857/sites/onlinecourses.science.psu.edu.stat857/files/german_credit.csv"

# Give a destination file path
download.file(fileUrl,destfile = "C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Three\\German.csv")

# Read from destination file path
data <- read.csv("C:\\Users\\Suprit\\Desktop\\Anaken R\\Tutorial Three\\German.csv",header=TRUE)
