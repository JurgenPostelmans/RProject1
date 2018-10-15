library("dplyr")

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE, dec = ',')
salesData$SalesAmount = as.numeric(salesData$SalesAmount)
salesData$CalendarQuarter = factor(salesData$CalendarQuarter)
salesData$CalendarYear = factor(salesData$CalendarYear)

head(salesData)

salesData %>% filter(Category == "Bikes") %>% group_by(Gender) %>% summarise(OrderQuantityByGender = sum(OrderQuantity)) %>% arrange(desc(OrderQuantityByGender)) %>% mutate(TotalOrderQuantity = sum(OrderQuantityByGender))