
productCategories <- c("Bike", "Pant", "Jacket")
productCategoriesSales <- sample(productCategories, 10, replace = T)
productCategoriesSales <- factor(x = productCategoriesSales)

salesAmountinEuro <- runif(length(productCategoriesSales), min = 1, max = 10)

tapply(salesAmountinEuro, productCategoriesSales, sum)

#strings are treated as factors by default
salesData <- data.frame(Categories = sample(c("Bike", "Pant", "Jacket"), 10, replace = T),
                        salesAmountinEuro = runif(length(productCategoriesSales), min = 1, max = 10))

class(salesData)
typeof(salesData)

names(salesData)
colnames(salesData)
rownames(salesData)

is.data.frame(salesData)

# Column 1
salesData[1]

salesData[1:2]

# Row 1, Column 2
salesData[1, 2]

salesData[1,]

salesData[,1]

salesData$Categories

tapply(salesData$salesAmountinEuro, salesData$Categories, FUN = sum)
tapply(salesData$salesAmountinEuro, salesData$Categories, FUN = lebgth)

str(salesData)

summary(salesData)

#adding extra columns
salesData$Tax <- 0.21
View(salesData)

rowid <- seq(1,10)
salesData <- cbind(salesData, rowid)
View(salesData)

salesData <- rbind(salesData, data.frame(Categories = c("Drink"), salesAmountinEuro = 10, Tax = 0.21, rowid = 11))
View(salesData)

# basic filtering
salesData[salesData$Categories == "Bike",]

salesData[salesData$Categories == "Bike",]

salesData$Categories == "Bike"

which(salesData$Categories == "Bike")

salesData[which(salesData$Categories == "Bike"), c("salesAmountinEuro")]

colnames(salesData)[colnames(salesData) == "Categories"] <- "Category"

colnames(salesData)

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")
salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactor=TRUE)
head(salesData)
View(salesData)

tapply(salesData$OrderQuantity, salesData$Gender, FUN=sum)
aggregate(salesData$OrderQuantity, by = list(salesData$Gender), FUN = sum)

salesByYear <- aggregate(salesData$OrderQuantity, by = list(salesData$CalendarYear), FUN = sum)

colnames(salesByYear) <- c("Year", "OrderQuantity")

summary(salesByYear)

plot(salesByYear$Year, salesByYear$OrderQuantity)

linm <- lm(salesByYear$OrderQuantity ~ salesByYear$Year)
abline(linm)