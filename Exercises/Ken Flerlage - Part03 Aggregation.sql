----Aggregation----
--Most Common Aggregate Functions in SQL--
Select MIN([Order Date]) AS [Oldest Order Date], MAX(Orders.[Order Date]) AS [Newest Order Date] from SuperstoreUS.dbo.Orders;

--Counting the entire Rows in a Queried Table--
Select Count(People.[Person]) AS [No of People] from SuperstoreUS.dbo.People;

----GROUP BY----
--Allows us to specify the level of detail at which we wish to aggregate our data--
Select Orders.[Customer Name], sum(Orders.[Sales]) FROM SuperstoreUS.dbo.Orders
GROUP BY Orders.[Customer Name];

--GROUP BY along WITH clause--
Select Orders.[Customer Name], Orders.[Category],AVG(Orders.[Sales]) as [Total Sales] from SuperstoreUS.dbo.Orders
WHERE ORDERS.[Order Date] >='01/01/2017' AND oRDERS.[Order Date] <='12/31/2017'
GROUP BY Orders.[Customer Name], Orders.[Category];

--Combination of GROUP BY, WITH & HAVING--
Select Orders.[Customer Name], Orders.[Category],AVG(Orders.[Sales]) as [Total Sales] from SuperstoreUS.dbo.Orders
WHERE ORDERS.[Order Date] >='01/01/2017' AND oRDERS.[Order Date] <='12/31/2017'
GROUP BY Orders.[Customer Name], Orders.[Category] HAVING AVG(Orders.[Sales]) >500;

--DISTINCT--
Select cOUNT(DISTINCT(Orders.[Customer Name])) as [Unique Customers] from SuperstoreUS.dbo.Orders;
