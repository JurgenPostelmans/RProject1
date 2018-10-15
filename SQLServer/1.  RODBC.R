library("RODBC")

dbconnection <- odbcDriverConnect("Driver={ODBC Driver 13 for SQL Server};Server=springfield;Database=AdventureWorksdw2016;trusted_connection=yes")
sqlQuery(dbconnection, query = "select top 10 CustomerKey, FirstName, LastName, Gender from dbo.DimCustomer")