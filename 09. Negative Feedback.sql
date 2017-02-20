Select f.ProductId,f.Rate,f.Description,f.CustomerId,c.Age,c.Gender
from Feedbacks  as f
JOIN Customers as c
ON f.CustomerId=c.Id
where f.Rate  <5.0
Order BY f.ProductId DESC,f.Rate ASC