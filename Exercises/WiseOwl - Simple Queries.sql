--List out the events in world history in date order--
Select EventName, EventDate from WorldEvents.dbo.tblEvent ORDER BY EventDate DESC;

--Show the first 5 rows from events table, with column aliases--
Select TOP (5) EventName AS What, EventDetails AS Details from WorldEvents.dbo.tblEvent ORDER BY EventDate ASC;

--Show the Last 3 categories in alphabetical order--
Select TOP (3) CategoryID, CategoryName from WorldEvents.dbo.tblCategory ORDER BY CategoryName DESC;

--Show the first and the last two events in date order--
Select TOP (2) EventName AS What, EventDate AS [When] from WorldEvents.dbo.tblEvent ORDER BY EventDate ASC
Select TOP (2) EventName AS What, EventDate AS [When] from WorldEvents.dbo.tblEvent ORDER BY EventDate DESC;