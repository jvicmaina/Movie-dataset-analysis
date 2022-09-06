# load dataset
library(readr)
library(ggplot2)
mydata = read.csv("C:/Users/jvicm/Desktop/New folder/movies.csv" , header =TRUE)
names(mydata)
summary(mydata)
head(mydata)
str(mydata)
#Cleaning the data 
library(dplyr)
library(ggcorrplot)
#Here we dropped the overview column
df <- subset (mydata, select = -overview)
names(df)
df <- dplyr::select_if(df, is.numeric)
# calulate the correlations
r <- cor(df, use="complete.obs")
round(r,2)
ggcorrplot(r)
