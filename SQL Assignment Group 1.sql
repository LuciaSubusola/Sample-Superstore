SELECT *
FROM [dbo].[Orders$]


--Top 10 product sold in Texas in 2017

SELECT TOP 10 [Product Name],[State/Province]
FROM [dbo].[Orders$]
WHERE  [State/Province] = 'TEXAS' AND [Order Date] like '2017%'
GROUP BY [Product Name], [State/Province]


--All the customer whose first name start with B

SELECT [Customer Name]
FROM [dbo].[Orders$]
WHERE [Customer Name] LIKE 'B%'
GROUP BY [Customer Name]


 --The customer who made purchase with quantity more than 10,showing both their names and quantity of products purchased
 
SELECT [Customer Name], [Product Name], [Quantity]
FROM [dbo].[Orders$]
WHERE [Quantity] > '10'
ORDER BY [Quantity] DESC


--All the product name, product category and sub-category with sales over $1000

SELECT [Product Name],[Category], [Sub-Category],ROUND([Sales],0) AS [SALES OVER 1000]
FROM [dbo].[Orders$]
WHERE [Sales] > 1000
ORDER BY [Sales] DESC



