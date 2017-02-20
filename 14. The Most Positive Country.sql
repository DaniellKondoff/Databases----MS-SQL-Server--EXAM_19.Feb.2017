
Select  TOP 1 With ties
c.Name as CountryName,
 AVG(f.Rate) as FeedbackRate
from Countries as c
JOIN Customers as cu
ON c.Id=cu.CountryId
JOIN Feedbacks as f
ON f.CustomerId=cu.Id
Group BY c.Name
Order By AVG(f.Rate) DESC
			
