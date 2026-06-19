CREATE DATABASE Tableau_Project

USE Tableau_Project

SELECT * FROM [dbo].[Depression+Student+Dataset]


--number of male and female
SELECT 
Gender,COUNT(*) 
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Gender

--updating male & female
UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'F' 
WHERE Gender = 'Female'


UPDATE [dbo].[Depression+Student+Dataset]
SET Gender = 'M' 
WHERE Gender = 'Male'


--Add age group column
ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Age_Group VARCHAR(50)


--Checking age_groups
SELECT Age,COUNT(*) AS [Count]
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age

--insert in age_group column
UPDATE [dbo].[Depression+Student+Dataset]
SET Age_Group =
    CASE
        WHEN Age < 25 THEN 'Young Adults'
        WHEN Age BETWEEN 25 AND 29 THEN 'Adults'
        ELSE 'Senior Students'
    END;


--check number of students in different age groups
SELECT 
    Age_Group,
    COUNT(AGE) AS [Count]
FROM [dbo].[Depression+Student+Dataset]
GROUP BY Age_Group

--Checking schema of the table
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Depression+Student+Dataset';

--adding index column to the table
ALTER TABLE [dbo].[Depression+Student+Dataset]
ADD Index_Number INT IDENTITY(1,1)

SELECT * FROM [dbo].[Depression+Student+Dataset]

--Changing Depresion column to yes/no
ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN Depression VARCHAR(50)

UPDATE [dbo].[Depression+Student+Dataset]
SET Depression =
    CASE
        WHEN Depression = 1 THEN 'Yes'
        ELSE 'No'
    END;

SELECT * FROM [dbo].[Depression+Student+Dataset]


--Changing 'Family_History_of_Mental_Illness' column to yes/no
ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN Family_History_of_Mental_Illness VARCHAR(50)

UPDATE [dbo].[Depression+Student+Dataset]
SET Family_History_of_Mental_Illness =
    CASE
        WHEN Family_History_of_Mental_Illness = 1 THEN 'Yes'
        ELSE 'No'
    END;

SELECT * FROM [dbo].[Depression+Student+Dataset]


--Changing ,Have_you_ever_had_suicidal_thoughts' column to yes/no
ALTER TABLE [dbo].[Depression+Student+Dataset]
ALTER COLUMN Have_you_ever_had_suicidal_thoughts VARCHAR(50)

UPDATE [dbo].[Depression+Student+Dataset]
SET Have_you_ever_had_suicidal_thoughts =
    CASE
        WHEN Have_you_ever_had_suicidal_thoughts = 1 THEN 'Yes'
        ELSE 'No'
    END;

SELECT * FROM [dbo].[Depression+Student+Dataset]


--validate the count of students in newly created columns
SELECT 
    Have_you_ever_had_suicidal_thoughts,
    COUNT(*) AS [Count]
FROM [Depression+Student+Dataset]
GROUP BY Have_you_ever_had_suicidal_thoughts

SELECT * FROM [Depression+Student+Dataset]