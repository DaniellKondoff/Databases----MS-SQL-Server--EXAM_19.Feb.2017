BEGIN TRAN

Update Ingredients
SET DistributorId=35
Where Name IN ('Bay Leaf', 'Paprika', 'Poppy')

Update Ingredients
SET OriginCountryId=14
Where OriginCountryId=8

Select * from Ingredients
Where OriginCountryId=8

ROLLBACK
