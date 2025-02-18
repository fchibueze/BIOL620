#Author: Favour, Date: Feb 22, Purpose: To generate box plots for microarray datasets

#Set the working directory to your .CEL files folder
setwd("C:/Users/fchib/OneDrive/Documents/GSE344")

#Load package affy
library(affy)

#Reading .CEL files
eset <- ReadAffy()

#Boxplot for raw datasets
boxplot(eset)

#Perform MAS5 Normalization
eset_Norm <- mas5 (eset)

#Boxplot for normalized datasets
mas5 <- exprs(eset_Norm)
boxplot(mas5)

