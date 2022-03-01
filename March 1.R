#Author: Favour, Date: March 1, 2022, Purpose: To generate box plots for microarray datasets

setwd("C:/Users/fchib/OneDrive/Documents/GSE344")

library(affy)

eset <- ReadAffy()

eset_Norm <- rma(eset)

rma <- exprs(eset_Norm)

head(rma)

#Log base 2, or base 10, To perform log transformation
Treatment <- apply(rma[,c("GSM153813.CEL", "GSM153814.CEL", "GSM153815.CEL", "GSM153816.CEL", "GSM153817.CEL")], 1,log)
Control <- apply(rma[,c("GSM4843.CEL", "GSM4844.CEL", "GSM4845.CEL", "GSM4846.CEL", "GSM4847.CEL")], 1, log)
head(Treatment)
