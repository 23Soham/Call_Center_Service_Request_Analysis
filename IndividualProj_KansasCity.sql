SELECT *
  FROM [damg7370].[dbo].[CityKansasModel]

  --- Question 1 ---
 SELECT
  YEAR([CREATION DATE]) AS Year,
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
WHERE
  YEAR([CREATION DATE]) BETWEEN 2018 AND 2021
GROUP BY
  YEAR([CREATION DATE])
ORDER BY
  Year;
GO
-------------------

--- Question 1 continued ---
SELECT
  CONCAT(YEAR([CREATION DATE]), '-', MONTH([CREATION DATE])) AS YearMonth,
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
WHERE
  YEAR([CREATION DATE]) BETWEEN 2018 AND 2021
GROUP BY
  [CREATION DATE]
ORDER BY
  [CREATION DATE];
GO
---------------------

--- Question 2 ----
SELECT
  SOURCE,
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
GROUP BY
  SOURCE
ORDER BY
  TotalRequests DESC;
-------------------------

--- Question 3 ---
  SELECT
  DEPARTMENT,
  YEAR([CREATION DATE]) AS Year,
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
GROUP BY
  Department, YEAR([CREATION DATE])
ORDER BY
  Department, Year;
-----------------------

--- Question 4 ---
SELECT TOP 10
  [CASE ID],
  CATEGORY1,
  Type,
  [DAYS TO CLOSE] AS ResponseTime
FROM
  CityKansasModel
WHERE
  [DAYS TO CLOSE] IS NOT NULL
ORDER BY
  ResponseTime ASC;
  ----------------------

--- Question 5 ---
SELECT TOP 10
  NEIGHBORHOOD AS Area, 
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
GROUP BY
  NEIGHBORHOOD
ORDER BY
  TotalRequests DESC;
-------------------------

--- Question 6 ---
SELECT
  DEPARTMENT,
  [WORK GROUP],
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
GROUP BY
  DEPARTMENT, [WORK GROUP]
ORDER BY
  DEPARTMENT, TotalRequests DESC;
------------------------------------

--- Question 7 ---
SELECT
  DEPARTMENT,
  DATEDIFF(day, [CREATION DATE], [CLOSED DATE]) AS ResponseTime
FROM
  CityKansasModel;
----------------------


--- Question 8 ---
SELECT
  YEAR([CREATION DATE]) AS Year,
  Status,
  COUNT([CASE ID]) AS TotalRequests
FROM
  CityKansasModel
WHERE
  YEAR([CREATION DATE]) BETWEEN 2018 AND 2021
GROUP BY
  YEAR([CREATION DATE]), Status;
------------------------------------

--- Question 9 ---
SELECT
  CATEGORY1,
  AVG([DAYS TO CLOSE]) AS AverageDaysToClose
FROM
  CityKansasModel
GROUP BY
  Category1
ORDER BY
  AverageDaysToClose DESC;
-----------------------------

--- Question 10 ---
SELECT
	Department,
  COUNT([CASE ID]) AS TotalRequests,
  AVG(CAST([DAYS TO CLOSE] AS FLOAT)) AS AvgDaysToClose
FROM
  CityKansasModel	
GROUP BY
  Department;
  ----------------

  --- ROWS COUNT ---
  SELECT COUNT(*) as [rows] FROM CityKansasModel;