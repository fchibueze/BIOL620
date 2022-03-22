#Author: Favour Chibueze, Date: March 22, 2022, Purpose: To generate box plots for microarray datasets

library(oligo)

setwd("C:/Users/fchib/OneDrive/Documents/GSE12849")

celfiles <- list.files("C:/Users/fchib/OneDrive/Documents/GSE12849",full = TRUE)

rawData <- read.celfiles(celfiles)

boxplot(rawData)