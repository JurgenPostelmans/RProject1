logins <- sample(oslist, 10, replace = T)
logins

class(logins)

flogins <- factor(logins)

# a factor with 3 levels...
# also note there are no "" around the values.
flogins

class(flogins)
is.factor(flogins)

table(flogins)

levels(flogins)

# note the numbers...
str(flogins)

setwd("C:/Users/Administrator/Desktop/RDemo/RProject1/RProject1")
salesData <- read.csv("sales data.txt", header = TRUE, sep = "|")

str(salesData)

salesData <- read.csv("sales data.txt", header = TRUE, sep = "|", stringsAsFactors = FALSE)

str(salesData)

# Group By with Factors
productCategories <- c("Bike", "Pant", "Jacket")
productCategoriesSales <- sample(productCategories, 10, replace = T)
productCategoriesSales <- factor(x = productCategoriesSales)

salesAmountinEuro <- runif(length(productCategoriesSales),min=1,max = 10)

productCategoriesSales
salesAmountinEuro

tapply(salesAmountinEuro, productCategoriesSales, sum)
tapply(salesAmountinEuro, productCategoriesSales, mean)
tapply(salesAmountinEuro, productCategoriesSales, length)

generateFactor <- gl(2, 5, length = 20, labels = c("Bikes", "Clothing"));
length(generateFactor)
summary(generateFactor)
str(generateFactor)