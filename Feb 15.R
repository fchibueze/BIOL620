#Author: Favour, Date: Feb 15 2022, Purpose: To perform microarray normalization

#Set the working directory to your .CEL files folder
setwd("C:/Users/fchib/OneDrive/Documents/GSE344")

#Load package affy
library(affy)

#Reading .CEL files
eset <- ReadAffy()

