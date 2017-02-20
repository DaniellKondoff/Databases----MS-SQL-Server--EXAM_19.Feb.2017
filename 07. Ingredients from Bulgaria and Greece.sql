Select TOP 15
 i.Name,i.Description,c.Name as CountryName from Ingredients as i
JOIN Countries as c
ON i.OriginCountryId=c.Id
Where c.Name IN ('Bulgaria','Greece')
Order BY i.Name ASC,c.Name