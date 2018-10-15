library("ggplot2")
library("dplyr")

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE, dec = ',')
salesData$SalesAmount = as.numeric(salesData$SalesAmount)
salesData$CalendarQuarter = factor(salesData$CalendarQuarter)
salesData$CalendarYear = factor(salesData$CalendarYear)

df <- salesData %>% group_by(EnglishEducation,Gender) %>% summarise(OrderQuantity = sum(OrderQuantity)) %>% arrange(desc(EnglishEducation))

head(df)

ggplot(df, aes(x = EnglishEducation, y = OrderQuantity, color = Gender))

ggplot(df, aes(x = EnglishEducation, y = OrderQuantity, color = Gender)) +
    geom_point()

ggplot(df, aes(x = EnglishEducation, y = OrderQuantity, color = Gender)) +
    geom_point()


df <- salesData %>% group_by(EnglishEducation, Gender) %>% summarise(OrderQuantity = sum(OrderQuantity)) %>% arrange(desc(EnglishEducation))

#By default, geom_bar uses stat="count" which makes the height of the bar proportion to the number of cases in each group (or if the weight aethetic is supplied, the sum of the weights). If you want the heights of the bars to represent values in the data, use stat="identity" and map a variable to the y aesthetic
ggplot(salesData, aes(x=CalendarYear, y = OrderQuantity)) +
    geom_bar(stat = "identity")