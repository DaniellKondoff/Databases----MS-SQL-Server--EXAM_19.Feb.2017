
Create Table Products(
Id int Primary Key Identity,
Name nvarchar(25) UNIQUE,
Description nvarchar(250),
Recipe nvarchar(max),
Price Money Check(Price>0)
)

Create Table Countries(
Id int Primary Key Identity,
Name nvarchar(50) Unique
)

Create Table Distributors(
Id int Primary Key Identity,
Name nvarchar(25) Unique,
AddressText nvarchar(30),
Summary nvarchar(200),
CountryId int,
Constraint FK_Distributors_Countries Foreign Key(CountryId) References Countries(Id)
)

Create Table Ingredients(
Id int Primary Key Identity,
Name nvarchar(30),
Description nvarchar(200),
OriginCountryId int,
DistributorId int
Constraint FK_Ingredients_Countries Foreign Key(OriginCountryId) References Countries(Id),
Constraint FK_Ingredients_Distributors Foreign Key(DistributorId) References Distributors(Id)
)

Create Table ProductsIngredients(
ProductId int,
IngredientId int,
Constraint PK_ProductsIngredients Primary Key(ProductId,IngredientId),
Constraint FK_ProductsIngredients_Products Foreign Key(ProductId) References Products(Id),
Constraint FK_ProductsIngredients_Ingredients Foreign Key(IngredientId) References  Ingredients(Id)
)

Create Table Customers(
Id int Primary Key Identity,
FirstName nvarchar(25),
LastName nvarchar(25),
Gender char(1) Check(Gender ='M' OR Gender='F'),
Age int,
PhoneNumber char(10) CHECK(LEN(PhoneNumber)=10),
CountryId int,
Constraint FK_Customers_Countries Foreign Key (CountryId) References Countries(Id)
)

Create Table Feedbacks(
Id int Primary Key Identity,
Description nvarchar(255),
Rate decimal(10,2) CHECK(RATE Between 0 and 10),
ProductId int,
CustomerId int
Constraint FK_Feedbacks_Products Foreign Key(ProductId) References Products(Id),
Constraint FK_Feedback_Customers Foreign Key(CustomerId) References Customers(Id)
)

