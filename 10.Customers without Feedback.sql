Select  
CONCAT(FirstName,' ',LastName) as CustomerName,
c.PhoneNumber,c.Gender
from Customers as c
LEFT JOIN Feedbacks as f
ON c.Id=f.CustomerId
Where f.Id IS NULL
Order By c.Id ASC