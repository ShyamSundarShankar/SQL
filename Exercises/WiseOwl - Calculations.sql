--Use the LEN function to show events with the shortest names--
Select EventName, LEN(EventName) as 'Length of name' from WorldEvents.dbo.tblEvent ORDER BY [Length of name] ASC;

--Show how big countries are in relation to Wales--
Select Country, KmSquared, ((KmSquared - (KmSquared % 20761))/20761) as 'WalesUnits', (KmSquared % 20761) as 'AreaLeftOver', CAST(CASE WHEN ((KmSquared - (KmSquared % 20761))/20761) = 0 THEN 'Smaller than Wales' ELSE (((KmSquared - (KmSquared % 20761))/20761) + 'x Wales plus ' + (KmSquared % 20761) + ' sq. kms.') END AS 'WalesComparison') from WorldEvents.dbo.CountriesByArea order by Country ASC;

--Concatenate text to show events with their categories--
