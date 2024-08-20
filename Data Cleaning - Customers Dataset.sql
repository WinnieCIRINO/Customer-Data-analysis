SELECT TOP (1000) [CustomerKey]
      ,[Prefix]
      ,[FirstName]
      ,[LastName]
      ,[BirthDate]
      ,[MaritalStatus]
      ,[Gender]
      ,[EmailAddress]
      ,[AnnualIncome]
      ,[TotalChildren]
      ,[EducationLevel]
      ,[Occupation]
      ,[HomeOwner]
  FROM [Solas Summer Learncsmp].[dbo].[customerss]

  -- Create a column with FullNames
  SELECT *, CONCAT(Prefix, ' ', FirstName, ' ', LastName) AS FullNames
  FROM customerss

  -- Create Year column
  SELECT *, DATENAME(Year, BirthDate) AS Year
  FROM Customerss

  -- Create age column
  SELECT *,
  YEAR(GETDATE())- DATENAME(Year, BirthDate)
  FROM customerss

  -- Create MaritalStatusFull
SELECT
 CASE
	WHEN MaritalStatus = 'S' THEN 'Single'
	WHEN MaritalStatus = 'M' THEN 'Married'
ELSE 'NA'
END AS 'MaritalStatusFull'
	FROM Customerss

-- Lets confirm distinct
SELECT DISTINCT Gender FROM customerss

  -- Create GenderFull
SELECT
 CASE
	WHEN Gender = 'F' THEN 'Female'
	WHEN Gender = 'M' THEN 'Male'
ELSE 'NA'
END AS 'GenderFull'
	FROM Customerss

-- Create Parent or Not Parent
SELECT 
	CASE
		WHEN TotalChildren >0 THEN 'Parent'
		ELSE 'Non-Parent'
	END AS 'Parent?'
FROM Customerss

-- Create a wealthy catergory
SELECT
 CASE
	WHEN AnnualIncome >= 150000 THEN 'Weathly'
	WHEN AnnualIncome >= 100000 THEN 'Rich'
	WHEN AnnualIncome >= 50000 THEN 'Average'
	WHEN AnnualIncome < 50000 THEN 'Poor'
ELSE 'NA'
END AS 'WealthCatergory'
	FROM Customerss

-- Create home owner column
SELECT 
 CASE
	WHEN HomeOwner = 1 THEN 'Yes'
	WHEN HomeOwner  = 0 THEN 'No'
ELSE 'Error'
END AS 'HomeOwnerFull'
	FROM Customerss

-- Create Username column
SELECT *,
LEFT(EmailAddress,CHARINDEX('@', EmailAddress)-1) AS UserName
FROM Customerss


-- Bring all the columns together
SELECT *,
CONCAT(Prefix, ' ', FirstName, ' ', LastName) AS FullNames,
DATENAME(Year, BirthDate) AS Year,
YEAR(GETDATE())- DATENAME(Year, BirthDate) AS Age,
CASE
	WHEN MaritalStatus = 'S' THEN 'Single'
	WHEN MaritalStatus = 'M' THEN 'Married'
ELSE 'NA'
END AS 'MaritalStatusFull',
CASE
	WHEN Gender = 'F' THEN 'Female'
	WHEN Gender = 'M' THEN 'Male'
ELSE 'NA'
END AS 'GenderFull',
CASE
		WHEN TotalChildren >0 THEN 'Parent'
		ELSE 'Non-Parent'
	END AS 'Parent?',
	CASE
	WHEN AnnualIncome >= 150000 THEN 'Weathly'
	WHEN AnnualIncome >= 100000 THEN 'Rich'
	WHEN AnnualIncome >= 50000 THEN 'Average'
	WHEN AnnualIncome < 50000 THEN 'Poor'
ELSE 'NA'
END AS 'WealthCatergory',
CASE
	WHEN HomeOwner = 1 THEN 'Yes'
	WHEN HomeOwner  = 0 THEN 'No'
ELSE 'Error'
END AS 'HomeOwnerFull',
LEFT(EmailAddress,CHARINDEX('@', EmailAddress)-1) AS UserName
FROM Customerss


-- Create a table
SELECT *,
CONCAT(Prefix, ' ', FirstName, ' ', LastName) AS FullNames,
DATENAME(Year, BirthDate) AS Year,
YEAR(GETDATE())- DATENAME(Year, BirthDate) AS Age,
CASE
	WHEN MaritalStatus = 'S' THEN 'Single'
	WHEN MaritalStatus = 'M' THEN 'Married'
ELSE 'NA'
END AS 'MaritalStatusFull',
CASE
	WHEN Gender = 'F' THEN 'Female'
	WHEN Gender = 'M' THEN 'Male'
ELSE 'NA'
END AS 'GenderFull',
CASE
		WHEN TotalChildren >0 THEN 'Parent'
		ELSE 'Non-Parent'
	END AS 'Parent?',
	CASE
	WHEN AnnualIncome >= 150000 THEN 'Weathly'
	WHEN AnnualIncome >= 100000 THEN 'Rich'
	WHEN AnnualIncome >= 50000 THEN 'Average'
	WHEN AnnualIncome < 50000 THEN 'Poor'
ELSE 'NA'
END AS 'WealthCatergory',
CASE
	WHEN HomeOwner = 1 THEN 'Yes'
	WHEN HomeOwner  = 0 THEN 'No'
ELSE 'Error'
END AS 'HomeOwnerFull',
LEFT(EmailAddress,CHARINDEX('@', EmailAddress)-1) AS UserName

INTO Customerss_Prep
FROM Customerss