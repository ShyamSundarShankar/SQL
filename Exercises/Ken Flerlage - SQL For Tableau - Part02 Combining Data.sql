----Joins-----
--Referred as VLOOKUP Function in Excel--
Select * from SuperstoreUS.dbo.Orders JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region;

----INNER JOIN----
--Returns only the records which matches with both the tables--
Select * FROM SuperstoreUS.dbo.Orders INNER JOIN People on SuperstoreUS.dbo.Orders.Region = People.Region;

--INNER JOIN With a Where Clause--
Select * FROM SuperstoreUS.dbo.Orders INNER JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region WHERE Category = 'Furniture';

--INNER JOIN Task--
--SQL statement that will return order information along with any related returns--
Select Orders.[Order ID], Orders.[Order Date], Returns.Returned From SuperstoreUS.dbo.Orders INNER JOIN [Returns] on Orders.[Order ID] = Returns.[Order ID];

----OUTER JOIN----
--LEFT OUTER JOIN--
--Retrieves all records from LEFT table--
Select * From SuperstoreUS.dbo.Orders LEFT OUTER JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region;

--RIGHT OUTER JOIN--
--Retrieves all records from RIGHT table--
Select * From SuperstoreUS.dbo.Orders RIGHT OUTER JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region;

--FULL OUTER JOIN--
--Combines both the tables and retieves all the records--
Select * from SuperstoreUS.dbo.Orders FULL OUTER JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region;

----CROSS JOIN----
--They will join each record from one table to each record from another (Permutation Combination)--
Select * from SuperstoreUS.dbo.Colors CROSS JOIN SuperstoreUS.dbo.Shapes;

----Table Aliases----
--For simplifying your Query and others to understand better to Alias you Table name in your query--
--The Complicated Snippet--
SELECT SuperstoreUS.dbo.Orders.[Row ID], SuperstoreUS.dbo.Orders.[Order ID], SuperstoreUS.dbo.Orders.[Order Date], SuperstoreUS.dbo.Orders.[Ship Date], SuperstoreUS.dbo.Orders.[Ship Mode], SuperstoreUS.dbo.Orders.[Customer ID], SuperstoreUS.dbo.Orders.[Customer Name], SuperstoreUS.dbo.Orders.[Segment], SuperstoreUS.dbo.Orders.[Country], SuperstoreUS.dbo.Orders.[City], SuperstoreUS.dbo.Orders.[State], SuperstoreUS.dbo.Orders.[Postal Code], SuperstoreUS.dbo.Orders.[Region], SuperstoreUS.dbo.Orders.[Product ID], SuperstoreUS.dbo.Orders.[Category], SuperstoreUS.dbo.Orders.[Sub-Category], SuperstoreUS.dbo.Orders.[Product Name], SuperstoreUS.dbo.Orders.[Sales], SuperstoreUS.dbo.Orders.[Quantity], SuperstoreUS.dbo.Orders.[Discount], SuperstoreUS.dbo.Orders.[Profit], SuperstoreUS.dbo.People.[Person]
FROM SuperstoreUS.dbo.Orders LEFT OUTER JOIN SuperstoreUS.dbo.People ON SuperstoreUS.dbo.Orders.[Region] = SuperstoreUS.dbo.People.[Region]

--The Simplified Snippet--
Select O.[Row ID], O.[Order ID], O.[Order Date], O.[Ship Date], O.[Ship Mode], O.[Customer ID], O.[Customer Name],O.[Segment], O.[Country], O.[City], O.[State], O.[Postal Code], O.[Region], O.[Product ID], O.[Category], O.[Sub-Category], O.[Product Name], O.[Sales], O.[Quantity], O.[Discount], O.[Profit], P.[Person]
FROM SuperstoreUS.dbo.Orders AS O LEFT OUTER JOIN SuperstoreUS.dbo.People AS P ON O.[Region] = P.[Region];

----Joining Multiple Tables----
--Joins multiple tables and Joins can be mixed and matched--
Select O.[Order ID], O.[Order Date], C.[Customer ID], C.[Customer Name],R.[Returned]
FROM SuperstoreUS.dbo.Orders as O INNER JOIN SuperstoreUS.dbo.Customers as C ON O.[Customer ID] = C.[Customer ID] INNER JOIN SuperstoreUS.dbo.Returns as R ON O.[Order ID] = R.[Order ID];

----UNION----
--UNION Is used to consolidate set of tables which has similar structure only with DISTINCT RECORDS, if not we should change the Alias--
Select * FROM SuperstoreUS.dbo.Charts1
UNION
Select * from SuperstoreUS.dbo.Charts2;

--UNION Using the Region wise Orders table--
Select * from SuperstoreUS.dbo.Orders_Central
UNION
Select * from SuperstoreUS.dbo.Orders_East
UNION
Select * from SuperstoreUS.dbo.Orders_West;

--UNION Using a Mismatched table structure using Alias--
Select O.[Order ID], O.[Order Date], O.[Product ID], O.[Sales] FROM SuperstoreUS.dbo.Orders_Central as O
UNION
Select O.[Order ID], O.[Order Date], O.[Product ID], O.[Sales] FROM SuperstoreUS.dbo.Orders_East as O
UNION
Select O.[Order ID], O.[Order Date], O.[Product ID], O.[Sales] FROM SuperstoreUS.dbo.Orders_West as O
UNION
Select [ID] AS [Order ID], [Date] AS O.[Order Date], [Product] AS O.[Product ID], [Amount] AS O.[Sales] FROM SuperstoreUS.dbo.Orders_South as O;

--UNION ALL--
--Consolidates set of tables INCLUDING DUPLICATE--
Select * from SuperstoreUS.dbo.Orders
UNION ALL
Select * from SuperstoreUS.dbo.Orders_Central;