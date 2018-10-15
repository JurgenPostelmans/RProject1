USE AdventureworksDW2016;
GO

EXEC sp_execute_external_script
  @language =N'R',
  @script=N'OutputDataSet<-InputDataSet',
  @input_data_1 =N'SELECT 1 AS hello'
  WITH RESULT SETS (
	([Hello World] int));
GO

--select Year(OrderDate) as OrderYear, sum(OrderQuantity) as TotalQuantity from dbo.FactInternetSales group by Year(OrderDate) order by Year(OrderDate)
EXEC sp_execute_external_script
  @language =N'R',
  @script=N'OutputDataSet<-SalesData',
  @input_data_1 =N'select Year(OrderDate) as OrderYear, sum(OrderQuantity) as TotalQuantity from dbo.FactInternetSales group by Year(OrderDate) order by Year(OrderDate)',
  @input_data_1_name = N'SalesData'
  WITH RESULT SETS (
	([Year] int, [Quantity] int));
GO

EXEC sp_execute_external_script
  @language =N'R',
  @script=N'
				lrmodel <- rxLinMod(formula = OrderQuantity ~ OrderYear, data = SalesData);
				futureYears <- data.frame(OrderYear = c(2015,2016));
				predictedOrderQuantity <- rxPredict(lrmodel, futureYears);
				predicted <- cbind(futureYears, ceiling(predictedOrderQuantity));
				names(predicted)[2] <- c("OrderQuantity");
				OutputDataSet <- rbind(SalesData,predicted);
		  ',
  @input_data_1 =N'select Year(OrderDate) as OrderYear, sum(OrderQuantity) as OrderQuantity from dbo.FactInternetSales group by Year(OrderDate) order by Year(OrderDate)',
  @input_data_1_name = N'SalesData'
  WITH RESULT SETS (
	([Year] int, [Quantity] int));
GO




