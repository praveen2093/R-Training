# R as a calculator
2+5
3*7
3^2

#Creating variables
x<-10
X<-20
x
X              # R is case sensitive
assign("x",15)
assign("X",25) # Alternative way of creating variable but not preferred

#Naming conventions
#Correct ways
student.names<-c("Ankit","Spandan","Sushmita") #Best way 
student_names<-c("Ankit","Spandan","Sushmita")
studentnames3<-c("Ankit","Spandan","Sushmita")
.studentnames<-c("Ankit","Spandan","Sushmita") # Correct but not preferred

#Incorrect ways
3studentnames<-c("Ankit","Spandan","Sushmita") 
student names<-c("Ankit","Spandan","Sushmita")
student@names<-c("Ankit","Spandan","Sushmita")
student!names<-c("Ankit","Spandan","Sushmita")
?Reserved     # Cannot use reserved words as variable names

student.marks<-c(30,60,90)
student.marks
mean(student.marks)   #Arithmetic mean
median(student.marks) #Arithmetic median


q()  #To quit R

#----------------------------------------------------------------------#

#Getting help
#Built in help
help.start()
?mean      #if we know the function
help(mean) #Same as ?mean
??mean     #if you do not know the function
??"arithmetic mean"
help.search("arithmetic mean") #same as ??"arithmetic mean"

example(mean)
apropos("mean",mode="function")

#Demonstrations
demo()
demo(topic = graphics,package = "graphics") #Demo

#Web Search from R
RSiteSearch("arithmetic mean") #Overwhelming
install.packages("sos") #Install package
library(sos) #Load package
findFn("arithmetic mean") #Looks for functions with either arithmetic or mean
findFn("{arithmetic mean}",maxPages = 2) 

#--------------------------------------------------------------------------------#
#WorkSpace
getwd() #Get working directory
setwd("C:\\Users\\Suprit\\Desktop\\RFiles") #Setting a new working directory
ls() #Lists objects in current workspace
rm("x") #Remove object x from workspace
rm(list=ls()) #Remove all objects in workspace

#--------------------------------------------------------------------------------#
#Packages
library() #All installed packages
search() #All loaded packages
install.packages("tm",dependencies = TRUE) #Install package "tm"
library(tm) #Load package "tm"
detach("package:tm") #Unload package



