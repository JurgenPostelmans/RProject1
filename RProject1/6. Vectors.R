
numbers <- c(1, 5, 10, 15, 20)

numbers2 <- 1:10

class(numbers2)

is.numeric(numbers2)

seq(1, 10, 0.5)
numbers3 <- seq(1, 10, 0.5)

#Uniform Distribution
runif(10, min = 0, max = 10)
randomData <- runif(10, min = 0, max = 10)
barplot(randomData)

rnorm(500, mean = 100, sd = 10)
randomData <- rnorm(500, mean = 100,sd=10)

oslist <- c("Android", "iOS", "Windows")

# sample each value only once when replace=F
logins <- sample(oslist, 10, replace = T)

length(logins)

logins

logins[1]

logins[1:4]

logins[c(1, 5, 10)]


numbers <- c(1, 5, 10, 15, 20)

sum(numbers)
mean(numbers)
min(numbers)
sd(numbers)
median(numbers)

numbersIncreased <- numbers + 1
numbersIncreased

logins
nchar(logins) > 5

logins[nchar(logins) > 5]

# vector recycling
c(1,10,20) + c(2,3)

listwithNA <- c(1:4, NA)

sum(listwithNA)

sum(listwithNA, na.rm = TRUE)

