setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE,dec = ',')
salesData$SalesAmount = as.numeric(salesData$SalesAmount)
salesData$CalendarQuarter = factor(salesData$CalendarQuarter)
salesData$CalendarYear = factor(salesData$CalendarYear)

head(salesData)

View(salesData)

summary(salesData)

salesData[salesData$Category == 'Bikes',]

salesData[salesData$Category == 'Bikes' & salesData$Color == 'Red',]

# how does this work ?
salesData$Category == 'Bikes' & salesData$Color == 'Red'
#vector of boleans

#returns a indexes of all matching rows
which(salesData$Category == 'Bikes' & salesData$Color == 'Red')

#combination of row and column filter s
subset(salesData, Subcategory == "Mountain Bikes" & Color == "Black", c("Fullname", "SalesAmount"))

#All columns except... But does not work with column names...
salesData[1, - c(1, 2, 3, 4)]

#returns a vector with postitions of each rpw
head(order(salesData$BirthDate))

salesData[order(salesData$BirthDate), c("BirthDate")]

#sort only works on vectors or factors...
sort(salesData$BirthDate)


#group by...
aggregate(salesData$OrderQuantity, by = list(salesData$Gender), FUN = sum)
aggregate(salesData$OrderQuantity ~ salesData$Gender, FUN = sum)

#frequency table. How often does something occurs?

table(salesData$Gender, salesData$Category)

# The xtabs function allows you to create crosstabulations using formula style input.
xtabs( ~ salesData$Gender + salesData$Category, data = salesData)

xtabs(salesData$SalesAmount ~ salesData$Gender + salesData$Category, data = salesData)

#discretizig data, only works on vectors.Returns for each value in wat range it would be
cut(salesData$SalesAmount, 3)

cut(salesData$SalesAmount, 3, labels= c("High","Medium", "low"))
cut(salesData$SalesAmount, 3, labels = c("High", "Medium", "low"), breaks= c(0,500,5000,100000))
