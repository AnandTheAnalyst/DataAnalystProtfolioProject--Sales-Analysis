/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  
       P.[ProductKey],
      P.[ProductAlternateKey]  as ProductItemCode,
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      P.[EnglishProductName] as [Product Name],
	  pc.EnglishProductCategoryName as [Product Category] , -- Joined in from Product Category table
	  ps.EnglishProductSubcategoryName as [Sub Category], -- Joined in from product subCategory table	  
     -- ,[SpanishProductName]
    --  ,[FrenchProductName]
     --,[StandardCost]
      --,[FinishedGoodsFlag]
      P.[Color] as [Product Color],
     -- ,[SafetyStockLevel]
     -- ,[ReorderPoint]
    -- ,[ListPrice]
      P.[Size] As [Product Size],
      --,[SizeRange]
      --,[Weight]
      --,[DaysToManufacture]
      P.[ProductLine] as [Product line],
      --,[DealerPrice]
      --,[Class]
      --,[Style]
      P.[ModelName] as [Product Model Name],
      --,[LargePhoto]
      P.[EnglishDescription] as [Product Description],
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
     -- ,[JapaneseDescription]
     -- ,[TurkishDescription]
     -- ,[StartDate]
    -- ,[EndDate]
      P.[Status] as Example,
	  isnull(P.Status,'OutDated') as [Product Status]
  FROM [AdventureWorksDW2019].[dbo].[DimProduct] as P
  Left Join [dbo].[DimProductSubcategory] as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  Left Join [dbo].[DimProductCategory] as pc On pc.ProductCategoryKey = pS.ProductCategoryKey
  order by p.ProductKey