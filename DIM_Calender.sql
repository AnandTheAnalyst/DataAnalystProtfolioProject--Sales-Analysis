--- Cleansed DIM DateTable
SELECT 
  [DateKey], 
  [FullDateAlternateKey] as Date --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] As Day --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  , 
  [EnglishMonthName] As Month, 
  Left([EnglishMonthName], 3) as MonthShort -- Useful for front end date navigation and front end graphs
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
Where 
  [CalendarYear] >= 2020
