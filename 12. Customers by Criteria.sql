Select FirstName,Age,PhoneNumber
 from Customers
 Where (Age>=21 and CHARINDEX('an',FirstName,0)>0) OR 
 PhoneNumber LIKE '%38' AND CountryId <> (Select Id from Countries Where Name='Greece')
 Order By FirstName ASC,Age DESC


