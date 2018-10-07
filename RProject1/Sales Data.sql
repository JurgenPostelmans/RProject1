SELECT        DimProductCategory.EnglishProductCategoryName AS Category, DimProductSubcategory.EnglishProductSubcategoryName AS Subcategory, DimProduct.Color, 
                         DimCustomer.FirstName + N' ' + DimCustomer.LastName AS Fullname, DimCustomer.BirthDate, DimCustomer.Gender, DimCustomer.MaritalStatus, DimCustomer.EnglishEducation, 
                         DimDate.FullDateAlternateKey AS OrderDate, DimDate.EnglishMonthName AS Month, DimDate.CalendarQuarter, DimDate.CalendarYear, FactInternetSales.OrderQuantity, FactInternetSales.SalesAmount
FROM            DimProductSubcategory INNER JOIN
                         DimProduct ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey INNER JOIN
                         DimProductCategory ON DimProductSubcategory.ProductCategoryKey = DimProductCategory.ProductCategoryKey INNER JOIN
                         FactInternetSales ON DimProduct.ProductKey = FactInternetSales.ProductKey INNER JOIN
                         DimCustomer INNER JOIN
                         DimGeography ON DimCustomer.GeographyKey = DimGeography.GeographyKey ON FactInternetSales.CustomerKey = DimCustomer.CustomerKey INNER JOIN
                         DimDate ON FactInternetSales.OrderDateKey = DimDate.DateKey