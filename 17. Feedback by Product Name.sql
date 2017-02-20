Create Function udf_GetRating(@ProductName varchar(max))
Returns Varchar(max)
AS
BEGIN
	Declare @result varchar(max)
	Declare @ProdCheck decimal(10,2)
	SET @ProdCheck= (Select
					AVG(f.Rate) as ProdRating
					from Products as p
					JOIN Feedbacks as f
					ON p.Id=f.ProductId
					group BY p.Name
					Having p.Name= @ProductName
					)
	IF(@ProdCheck)<5
	BEGIN
		SET @result= 'Bad'
	END
	IF(@ProdCheck Between 5 and 8)
	BEGIN
		SET @result= 'Average'
	END

	IF(@ProdCheck)>8
	BEGIN
		SET @result= 'Good'
	END

	
	IF(@ProdCheck IS NULL)
	BEGIN
		SET @result= 'No rating'
	END
	Return @result
END