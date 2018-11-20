--Use the LEN function to show events with the shortest names--
Select EventName, LEN(EventName) as 'Length of name' from WorldEvents.dbo.tblEvent ORDER BY [Length of name] ASC;

--Show how big countries are in relation to Wales--
