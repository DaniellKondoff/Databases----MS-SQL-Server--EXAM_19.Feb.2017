
Select f.ProductId,
CONCAT(c.FirstName,' ',c.LastName) as CustomerName,
f.Description
 from Feedbacks as f
JOIN Customers as c
ON f.CustomerId=c.Id
Where f.CustomerId IN
					(Select f.CustomerId
					 from Feedbacks as f
					JOIN Customers as c
					ON f.CustomerId=c.Id
					Group BY f.CustomerId
					Having COUNT(*)>=3)
Order By f.ProductId,CustomerName,f.Id 









