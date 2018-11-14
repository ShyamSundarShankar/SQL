--Subqueries--
Select City, Sum(Profit) as TProfit from SuperstoreUS.dbo.Orders Group By City Order By TProfit Desc;

--Top 10 Cities with Highest Profits--
Select Top(10) City, Sum(Profit) as TProfit from SuperstoreUS.dbo.Orders Group By City Order By TProfit Desc;

--Total Sales by Customer--
Select Cus.[Customer Name] AS CName, Sub.TSales From Customers as Cus
JOIN (Select [Customer ID], Sum(Sales) as TSales From  Orders Group By [Customer ID]) AS Sub
On Cus.[Customer ID] = Sub.[Customer ID];

--Average Profit by Day--
SELECT City, DATENAME(dw, [Order Date]) AS DoW, AVG(Profit) AS AProfit FROM Orders GROUP BY City, DATENAME(dw, [Order Date]) ORDER BY City, DoW;

--Average Profit by Day (Subquery)--
SELECT O.City, DATENAME(dw, [Order Date]) AS DoW, AVG(O.Profit) AS AProfit FROM Orders AS O
JOIN ( SELECT TOP(3) City, SUM(Profit) AS TProfit FROM dbo.Orders GROUP BY City ORDER BY TProfit DESC) AS sub
ON O.City = sub.City GROUP BY O.City, DATENAME(dw, [Order Date]) ORDER BY O.City, DoW;