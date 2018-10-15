#https://www.mssqltips.com/sqlservertip/4123/sql-server-2016-r-services-executing-r-code-in-revolution-r-enterprise/

library(RevoScaleR)

conStr <- "Driver={ODBC Driver 13 for SQL Server};Server=springfield;Database=AdventureWorksdw2016;trusted_connection=yes"

sqlShareDir <- paste("c:/Share/", Sys.getenv("username"), sep = "")

dir.create(sqlShareDir, recursive = TRUE)

sqlWait <- TRUE

sqlConsolseOutput <- FALSE

rxGetComputeContext()

cc <- RxInSqlServer(connectionString = conStr, shareDir = sqlSharedDir, wait = sqlWait, consoleOutput = sqlConsolseOutput)

rxSetComputeContext(cc)

bikers <- RxSqlServerData(sqlQuery = "select * from vTargetMail",connectionString = conStr,rowsPerRead = 5000)


rxGetInfo(data = bikers)

rxGetVarInfo(data = bikers)

#varsToKeep/Drop is ot supported with SQL Server, Terradata or ODBC
#returns a data frame !!
filteredMale <- rxDataStep(inData = bikers, rowSelection = Gender == "M", varsToDrop = c("Gender"))

head(filteredMale)


res <- rxDataStep(inData = bikers, rowSelection = Gender == "M", transforms = list(newCol = YearlyIncome / TotalChildren))

rxSummary( ~ ., data = bikers)

rxSummary(~ Age + YearlyIncome, data = bikers)

rxCor( ~ Age + YearlyIncome,data = bikers)

rxSetComputeContext("local")