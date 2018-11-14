--The Order of Operations--

--SQL queries are processed in the following logical order:
--1.  FROM
--2.  JOIN
--3.  WHERE
--4.  GROUP BY
--5.  <AGGREGATION>
--6.  HAVING
--7.  SELECT
--8.  DISTINCT
--9.  ORDER BY
--10. TOP / LIMIT

--TOP (By Order)--
Select Top(8) * from SuperstoreUS.dbo.Orders Order by Profit Desc;

--Total profit of each City (Lexical Vs Logical)--
Select City, Sum(Profit) as Total_Prof From SuperstoreUS.dbo.Orders Group By City Order by Total_Prof Desc;

--Top 3 Most Profitable Cities--
Select Top(3) City, Sum(Profit) as TProfit from SuperstoreUS.dbo.Orders Group By City Order By TProfit Desc;

--SubQuery with JOIN--
Select O.City, AVG(O.Profit) as AProfit from SuperstoreUS.dbo.Orders as O
JOIN (Select Top(3) City, SUM(Profit) as TProfit from dbo.Orders Group By City Order By TProfit Desc) as Sub
ON O.City = Sub.City Group By O.City Order By AProfit;