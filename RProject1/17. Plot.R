library("dplyr")

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor = TRUE, dec = ',')
salesData$SalesAmount = as.numeric(salesData$SalesAmount)
salesData$CalendarQuarter = factor(salesData$CalendarQuarter)
salesData$CalendarYear = factor(salesData$CalendarYear)

head(salesData)

df <- salesData %>% group_by(EnglishEducation) %>% summarise(OrderQuantity = sum(OrderQuantity)) %>% arrange(desc(EnglishEducation))

head(df)

#scatter plot
plot(df$OrderQuantity)

#stepped plot (p,l,b(oth),h,o)
plot(df$OrderQuantity, type = "l")

plot(df$OrderQuantity, type = "l", ylim = c(0, max(df$OrderQuantity) + 1000), ylab = "Order Quantity", xaxt = "n",xlab="Education")
axis(1, at = df$EnglishEducation, labels = df$EnglishEducation,)
title("Sales by education")
text(1, 5000, "Start")
#y=ax+b
abline(5000, 2000, col = "red")
#horizontal line
abline(h = mean(df$OrderQuantity), col = "blue")
# 1= circle, 2 = filled circles, 2 = triangle...
points(df$OrderQuantity, pch = 1)

boxplot(df$OrderQuantity)

boxplot(df$OrderQuantity ~ df$EnglishEducation)

barplot(df$OrderQuantity, names.arg = df$EnglishEducation, cex.names = 0.9, col = c("darkolivegreen3", "firebrick1"))

png("c:/barplot.png", height = 1000, width = 1000, res = 120, units = 'px')
barplot(df$OrderQuantity, names.arg = df$EnglishEducation, cex.names = 0.9, col = c("darkolivegreen3", "firebrick1"))
dev.off()