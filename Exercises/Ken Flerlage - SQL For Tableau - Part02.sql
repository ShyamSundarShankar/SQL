----Joins-----
--Referred as VLOOKUP Function in Excel--
Select * from SuperstoreUS.dbo.Orders JOIN SuperstoreUS.dbo.People on Orders.Region = People.Region;

----INNER JOIN----
--Returns only the records which matches with both the tables--
Select * FROM Orders INNER JOIN People on Orders.Region = People.Region;

--INNER JOIN With a Where Clause--
Select * FROM Orders INNER JOIN People on Orders.Region = People.Region WHERE Category = 'Furniture';

--INNER JOIN Task--
--SQL statement that will return order information along with any related returns--
Select Orders.[Order ID], Orders.[Order Date], Returns.Returned From Orders INNER JOIN [Returns] on Orders.[Order ID] = Returns.[Order ID];

----OUTER JOIN----

