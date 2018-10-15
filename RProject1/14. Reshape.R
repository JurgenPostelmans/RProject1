library("dplyr")
library("reshape2")

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE, dec = ',')
salesData$SalesAmount = as.numeric(salesData$SalesAmount)
salesData$CalendarQuarter = as.factor(salesData$CalendarQuarter)
salesData$CalendarYear = as.factor(salesData$CalendarYear)


salesData %>% select(CalendarYear, Category, OrderQuantity) %>% group_by(CalendarYear, Category) %>% summarise(OrderQuantityByGender = sum(OrderQuantity))

tmp <- salesData %>% select(CalendarYear, Category, OrderQuantity) %>% group_by(CalendarYear, Category) %>% summarise(OrderQuantityByGender = sum(OrderQuantity))


CategoryOnRowsCalendarYearOnColumns <- dcast(tmp, Category ~ CalendarYear, fun.aggregate = sum)

head(CategoryOnRowsCalendarYearOnColumns)

#By default, melt has assumed that all columns with numeric values are variables with values
melt(CategoryOnRowsCalendarYearOnColumns))

melt(CategoryOnRowsCalendarYearOnColumns, id.vars= c("Category"), value.name = c("2010", "2011", "2012", "2014"))