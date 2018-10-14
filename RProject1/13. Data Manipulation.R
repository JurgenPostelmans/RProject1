setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE)
head(salesData)

View(salesData)

salesData[salesData$Category == 'Bikes',]

salesData[salesData$Category == 'Bikes' & salesData$Color == 'Red',]

# how does this work ?
salesData$Category == 'Bikes' & salesData$Color == 'Red'
#vector of boleans

#returns a indexes of all matching rows
which(salesData$Category == 'Bikes' & salesData$Color == 'Red')

subset()