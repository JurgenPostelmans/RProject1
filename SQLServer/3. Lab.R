#install.packages("rpart.plot")
library("RODBC")
library("rpart")
library("rpart.plot")

dbconnection <- odbcDriverConnect("Driver={ODBC Driver 13 for SQL Server};Server=springfield;Database=AdventureWorksdw2016;trusted_connection=yes")
inputData <- sqlQuery(dbconnection, query = "select BikeBuyer, YearlyIncome, NumberCarsOwned, TotalChildren from dbo.vTargetMail")

head(inputData)

tree <- rpart(BikeBuyer ~ YearlyIncome + NumberCarsOwned + TotalChildren, data = inputData, method = "class")

rpart.plot(tree)

newCustomer <- data.frame(YearlyIncome = c(90000), NumberCarsOwned = c(1), TotalChildren = c(1))
newCustomer$BikeBuyer = predict(tree, newdata = newCustomer,type="class")
newCustomer$Probability = predict(tree, newdata = newCustomer, type = "prob")

head(newCustomer)

#x is a vector or an integer
sample(x = 150, size = 100)

#inputData <- sqlQuery(dbconnection, query = "select BikeBuyer, YearlyIncome, NumberCarsOwned, TotalChildren,Region from dbo.vTargetMail")
#subset(inputData, subset = Region == "Europe")

prp(tree)