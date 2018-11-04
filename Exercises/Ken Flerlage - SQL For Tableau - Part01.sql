----SELECT/FROM----
--Selecting specific fields--
Select [Order ID],  [Order Date] from Orders;

--Selecting all fields--
Select * from Orders;


----WHERE----
--Prefixing the Table name with Database name--
Select [Order ID], [Order Date] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'East';

--WHERE & AND--
Select [Order ID], [Order Date] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'East' AND [Segment] = 'Consumer';

--WHERE & OR--
Select [Order ID], [Order Date] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'East' OR [Region] = 'West';


----ORDER BY----
--General ORDER BY--
Select [Order ID],[Order Date] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'West' Order By [Row ID];

--ORDER BY Ascending--
Select [Order ID], [Order Date] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'South' Order By [Row ID] ASC;

--ORDER BY Descending--
Select [Order ID],[Customer Name],[Country] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'South' Order By [Row ID] DESC;

--Multi-level ORDER BY--
Select [Order ID],[Customer Name],[Country] from [SuperstoreUS].[dbo].[Orders] Where [Region] = 'West' Order BY [Row ID] DESC, [Customer Name] ASC;


----AS----
--Change Field Name--
Select [Order ID] AS [ID], [Customer Name] AS [Name], [Country] From [SuperstoreUS].[dbo].[Orders] Where [Region] = 'South' Order By [Customer Name] ASC;

--Custom Values--
Select 1 AS [Default Value], [Order ID], [Customer Name], [Country] From [SuperstoreUS].[dbo].[Orders] Where [Region] = 'West';

--Calculations--
Select [Order ID], [Customer Name],[Country], [Sales]/[Quantity] AS [Unit Price] from [SuperstoreUS].[dbo].[Orders];

--Database Functions--
Select [Order ID], [Customer Name], LEFT([Product ID],3) AS [Product SF] from [SuperstoreUS].[dbo].[Orders];