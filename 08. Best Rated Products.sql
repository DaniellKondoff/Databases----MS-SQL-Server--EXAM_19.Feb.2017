Select TOP 10
p.Name,p.Description,
AVG(f.Rate) as AverageRate,
COUNT(f.Id) as FeedbacksAmount
from Products as p
JOIN Feedbacks as f
ON p.Id=f.ProductId
Group BY p.Name,p.Description
Order BY AVG(f.Rate) DESC,COUNT(f.Id) DESC