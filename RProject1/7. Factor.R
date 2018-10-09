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
oslist <- c("Android", "iOS", "Windows")
logins <- sample(oslist, 10, replace = T)
flogins <- factor(x = logins)
duration <- rnorm(length(logins), 50, 10)

duration
flogins

tapply(duration, flogins, mean)
tapply(duration, flogins, sum)
tapply(duration, flogins, length)
