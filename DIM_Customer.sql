--Cleansed DIm Customer Table--
SELECT 
  C.[CustomerKey], 
  --[GeographyKey]
  --[CustomerAlternateKey]
  --,[Title]  
  C.[FirstName] as [First Name], 
  --,[MiddleName]
  C.[LastName] as [Last Name], 
  C.[FirstName] + ' ' + c.[LastName] as [Full Name], 
  -- Combined First & Last Name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  -- ,[Gender]
  CASE C.Gender When 'M' then 'Male' When 'F' Then 'Female' End  as Gender, 
  -- ,[EmailAddress]
  -- ,[YearlyIncome]
  -- ,[TotalChildren]
  -- ,[NumberChildrenAtHome]
  -- ,[EnglishEducation]
  -- ,[SpanishEducation]
  --  ,[FrenchEducation]
  --  ,[EnglishOccupation]
  --  ,[SpanishOccupation]
  --  ,[FrenchOccupation]
  -- ,[HouseOwnerFlag]
  --  ,[NumberCarsOwned]
  --   ,[AddressLine1]
  --   ,[AddressLine2]
  --   ,[Phone]
  C.[DateFirstPurchase] AS DateFirstPurchase, --,[CommuteDistance]
  G.City as [Customer City] -- Joined customer city by Geography Table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] As C 
  Left Join [dbo].[DimGeography] as g On C.GeographyKey = g.GeographyKey 
order by 
  CustomerKey ASC -  order List by CustomerKey
