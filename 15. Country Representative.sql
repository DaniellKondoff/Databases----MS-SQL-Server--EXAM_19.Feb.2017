Select CountryName,DisributorName from
(Select c.Name as CountryName,d.Name as DisributorName,COUNT(i.Id) as distCount,
DENSE_RANK() OVER(Partition By c.name Order By COUNT(i.Id) DESC ) as rank
from Countries as c
 JOIn Distributors as d
ON d.CountryId=c.Id
LEFT JOIN Ingredients as i
ON i.DistributorId=d.Id
Group BY  c.Name,d.Name) as result
Where rank=1

