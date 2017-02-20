Create PROC usp_SendFeedback (@CustomerId int ,@ProductId int,@Rate decimal(10,1),@Description varchar(255))
AS 
BEGIN
	BEGIN TRAN

	IF (SELECT COUNT(*) as FeedbackProd FROM Feedbacks Where CustomerId=@CustomerId AND ProductId=@ProductId) >2
	Begin
	 ROLLBACK
	 RAISERROR('You are limited to only 3 feedbacks per product!',16,1)
	 Return
	END

	ELSE
	BEGIN
		Insert into Feedbacks(CustomerId,ProductId,Rate,Description)
		Values(@CustomerId,@ProductId,@Rate,@Description)
		COMMIT
	END

END