
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