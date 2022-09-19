-- Databricks notebook source
CREATE TABLE jobs101 AS 
  SELECT * FROM jobs1_0
  UNION 
  SELECT * FROM jobs1_1
  UNION
  SELECT * FROM jobs1_2
  UNION
  SELECT * FROM jobs1_3
  

-- COMMAND ----------

Select * FROM jobs101

-- COMMAND ----------

Select id, count(id) 
FROM jobs101
  GROUP BY id
Having
  COUNT(id) > 1

-- COMMAND ----------

CREATE TABLE jobs1015 AS 
Select Row_Number() Over(PARTITION BY id 
Order BY id) AS temp_index,
id, company, description, location, positionName, postedAt, rating, salary FROM jobs1013

-- COMMAND ----------

Select id,company FROM jobs1015
Where temp_index > 1

-- COMMAND ----------

DELETE FROM jobs1015 
WHERE temp_index > 1

-- COMMAND ----------

Select * FROM jobs1015
Where description IS NULL or description = ""

-- COMMAND ----------

DELETE FROM jobs1015
WHERE| description IS NULL

-- COMMAND ----------

Select * FROM jobs1015
Where location IS NULL or positionName IS NULL or company IS NULL

-- COMMAND ----------

UPDATE jobs1015
SET company = 'Primerica'
WHERE company IS NULL;

-- COMMAND ----------

SELECT salary, count(salary) Over(Order by salary) Salary_Count
FROM jobs1015
WHere salary IS NOT NULL 
/* salary is not important for purposes of project and only takes place in less than a third of the columns so we will drop the column

-- COMMAND ----------

Select count(*) FROM jobs1015

-- COMMAND ----------

ALTER TABLE jobs1015 SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5')
/* needed to allow mapping of table by name and upgrade read and write versions to allow for column to be dropped

-- COMMAND ----------

Alter Table jobs1015
DROP Column salary
-- salary is not needed for our purposes

-- COMMAND ----------

Alter Table jobs1015
DROP COLUMN rating
-- rating is not needed for our purposes and is an unreliable metric since factors such as number of ratings, info about people who posted ratings, and more is not known

-- COMMAND ----------

Alter Table jobs1015
DROP COLUMN postedAT
-- postedDate is not needed for our purposess since job postings all appear relativesly recent (within the last 90 days)

-- COMMAND ----------

Select * FROM jobs1015

-- COMMAND ----------

Alter Table jobs1015
DROP COLUMN temp_index
-- column is no longer needed after deleting duplicates (all values in temp_index will be 1)

-- COMMAND ----------

-- Cleaning and parsing will be much more practical in python so we will upload the table into a pandas dataframe in another notebook 
