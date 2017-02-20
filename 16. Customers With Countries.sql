Create View v_UserWithCountries AS
Select CONCAT(FirstName,' ',LastName) as CustomerName,Age,Gender,co.Name
from Customers as cu
JOIN Countries as co
ON co.Id=cu.CountryId