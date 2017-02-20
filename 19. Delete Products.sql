Create Trigger TR_Delete_Products on Products Instead of DELETE
AS
BEGIN
	Delete from Feedbacks
	Where ProductId=(Select d.Id from deleted as d)
	Delete from ProductsIngredients
	Where ProductId=(Select d.Id from deleted as d)
	Delete from Products
	Where Id = (Select d.Id from deleted as d)
END