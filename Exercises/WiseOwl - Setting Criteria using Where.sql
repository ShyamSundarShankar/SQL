--List out events to do with Teletubbies or Andy Pandy--
Select EventName, EventDate from WorldEvents.dbo.tblEvent WHERE EventName LIKE '%Teletubbies%' OR EventName LIKE '%Pandy%';

--List all the events in the Love/Relationships category--
Select EventName, EventDate from WorldEvents.dbo.tblEvent Where CategoryID = 11;

--Combine criteria to show possibly watery post-1970 events!--
Select EventName, EventDetails, EventDate from WorldEvents.dbo.tblEvent
Where (CountryID IN (8, 22, 30, 35) OR EventDetails LIKE '%Water%' OR CategoryID = 4) AND Year(EventDate) >= 1970;

--List all the events occurring in February 2005--
Select EventName as What, EventDate as 'When' from WorldEvents.dbo.tblEvent Where Year(EventDate) = 2005 and MONTH(EventDate) = 02;

--Events which aren't in the Transport category (number 14), but which nevertheless include the word Train in the EventDetails column--
Select EventName from WorldEvents.dbo.tblEvent Where CategoryID <> 14 AND EventDetails Like '%Train%';

--Events which are in the Space country (number 13), but which don't mention Space in either the event name or the event details columns--
Select EventName From WorldEvents.dbo.tblEvent Where CountryID = 13 AND EventName NOT LIKE '%space%' AND EventDetails NOT LIKE '%space%';

--Events which are in categories 5 or 6 (War/conflict and Death/disaster), but which don't mention either War or Death in the EventDetails column--
Select EventName, EventDetails From WorldEvents.DBO.tblEvent Where CategoryID IN (5, 6) AND EventDetails NOT LIKE '%war%' AND EventDetails NOT LIKE '%death%';