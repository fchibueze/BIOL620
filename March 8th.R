#Author: Favour Chibueze, Date: March 8, 2022, Purpose: To generate box plots for microarray datasets

setwd("C:/Users/fchib/OneDrive/Documents/GSE344")

library(affy)

eset <- ReadAffy()

eset_Norm <- rma(eset)

rma <- exprs(eset_Norm)

head(rma)

#Log base 2, or base 10, To perform log transformation
Treatment <- apply(rma[,c("GSM153813.CEL", "GSM153814.CEL", "GSM153815.CEL", "GSM153816.CEL", "GSM153817.CEL")], 1,log)
Control <- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL", "GSM4845.CEL", "GSM4846.CEL", "GSM4847.CEL")], 1, log)

#head is used to check if the statement works

head(Treatment)

#Transpose: Switch colums to rows and rows to columns!!

#Perform transpose so that the samples are the columns and the genees are the rows!!

Treatment_T <- t(Treatment)

Control_T <- t(Control)

head(Treatment_T)

#To make fold changes, the mean/average for both the treatment and the control samples are needed. 

Treatment_T_Mean <- rowMeans(Treatment_T)
Control_T_Mean <- rowMeans(Control_T)
head(Treatment_T_Mean)
head(Control_T_Mean)

#Get the subtraction fold change for treatment over control

Fold_Change <- Treatment_T_Mean-Control_T_Mean

head(Fold_Change)

#Assignment: Export variable "Fold Change" as a .csv format file with name "fold_change.csv".

