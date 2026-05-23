#========================================================================

#Loading internal dataset
library(ggplot2)
data(diamonds)
diamonds

#User Input
x <- scan() 
keyboard.data<- data.frame(name=character(0),gender=character(0),age=numeric(0),marks=numeric(0))
keyboard.data<- edit(keyboard.data)  #Alternative for this line: fix(keyboard.data)

#=================================================================================

# Importing Files

# Read semicolon separated files
data.semicolon <- read.table("C:\\Users\\Suprit\\Desktop\\Anaken R\\datasemicolon.txt",header = TRUE,sep = ";")

# Read space separated files
data.space <- read.table("C:\\Users\\Suprit\\Desktop\\Anaken R\\dataspace.txt",header = TRUE)

getwd() # Get working directory

data.space1 <- read.table("dataspace.txt",header = TRUE)

# Read csv files
data.csv <- read.table("datacsv.txt",header =TRUE, sep =",")
data.csv1 <- read.csv("dataexcel.csv",header=TRUE)

# Read xlsx files
library(xlsx)
data.excel <- read.xlsx("dataexcel.xlsx",sheetIndex = 1)

#====================================================================================

#Vectors

#===================================================================
#Create
x <- c(2,4,6,8,10)
x1 <- seq(2,10,by = 2)
x2 <- seq(2,10,length=5)
x3 <- 1:10
x4 <- rep(5,times = 10)

#====================================================================
# Append
x.append <- c(x,x1,x3,x4)

# Vector dimension
length(x)
NROW(x)

#Arithmetic Operators
a<-c(1,2,3)
b<-c(2,6,7)
a+b
a-b
a*b
a/b
a^b
a**b
b%%a
b%/%a

#Boolean Operators
a==b
a!=b
a<=b
a>=b

#NA & NULL
x<-c(12,NA,20,28)
mean(x)
mean(x,na.rm=TRUE)
y<-c(12,NULL,20,28)
mean(y)


#Special Numbers
1/0 #Inf
-1/0 #-Inf
0/0  #NaN

#Filtering
x<-c(2,6,3,8,10)
y<- x>5
x[y]
# Alternative
x[x>5]   

#Subset function,"
x<-c(2,6,3,8,10)
subset(x, x>5)
y<- c(6,1:3,NA,12)
y[y>5]
subset(y, y>5)

#Which
x<-c(2,6,3,8,10)
which(x>5)
x[which(x>5)]

price<-c(10,30,20,50)
sales<-c(1000,200,500,100)
price[(sales*2)>300]

#Vectorized ifelse
x<-2:10
ifelse(x%%2==0,"Even","Odd")
ifelse(x>5,x+2,x+3)

#All & Any
all(a>2)
if(all(a>2)) print("All nos greater than 2")
any(a>2)
if(any(a>2)) print("Atleast one no. greater than 2")

#Sorting
x<-c(3,6,2,9)
sort(x)

#Naming vectors
x<-1:3
names(x)
names(x)<-c("a","b","c")
names(x)<-NULL

#===========================================================================
#More on matrices
#Arithmetic Operators
mat1<-matrix(1:6,nrow=2,ncol=3)
mat2<-matrix(1:6,nrow=2,ncol=3,byrow=TRUE)
t(mat1)                   # Transpose
mat1+mat2                 # Addition
mat1-mat2                 # Subtraction
mat3<-mat1 %*% t(mat2)    # Matrix multiplication
det(mat3)                 # Determinant
solve(mat3)               # Inverse
mat1*2                    # Element wise multiplication
mat1*mat2
mat1/2                    # Element wise division
mat1/mat2

#Megative Subscripts
mat<- matrix(1:12,3,4)      
mat[,-4]

#Filtering
m<-matrix(1:6,3,2,byrow=TRUE)
m[m[ ,1]>1 & m[ ,2]>5, ]
m[m[ ,1]>1 & m[ ,2]>5, ,drop=FALSE]

m<- matrix(c(5,2,9,-1,10,11),3,2)
which(m>2)

#Appending Matrices
mat<- matrix(1:12,3,4)
mat<-cbind(c(1,1,1), mat)
mat<-rbind(mat,c(3,5,7,9,11))

#Naming Matrices
mat<-matrix(1:4,2,2)
colnames(mat)
colnames(mat)<-c("a", "b")
rownames(mat)<-c("Row1", "Row2")
mat
dim(mat)                      #Get dimensions of matrix
nrow(mat)                    #Alt: dim(mat)[1]
ncol(mat)                     #Alt: dim(mat)[2]

#Apply Function
m<-matrix(1:6,3,2)
apply(m,2,mean)              #Column means
apply(m,1,max)               #Row max                      
