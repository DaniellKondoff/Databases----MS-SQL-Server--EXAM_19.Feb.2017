Select 
d.Name as DistributorName,
i.Name as IngredientName,
p.Name as ProductName, 
AVG(f.Rate) as AverageRate
from Distributors as d
JOIN Ingredients as i
ON d.Id=i.DistributorId
JOIN ProductsIngredients as pri
ON pri.IngredientId=i.Id
JOIN Products as p
ON p.Id=pri.ProductId
JOIN Feedbacks as f
ON f.ProductId=p.Id
Group By d.Name,i.Name,p.Name
Having AVG(f.Rate) Between 5 and 8
Order BY DistributorName ,IngredientName,ProductName