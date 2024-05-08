-- Databricks notebook source
-- MAGIC %python
-- MAGIC spark

-- COMMAND ----------

CREATE TABLE Employee(
  id INT,
  name STRING,
  age INT,
  weight FLOAT
)

-- COMMAND ----------

INSERT INTO Employee
VALUES
  (1, "Abhishek", 25, 80),
  (2, "Karthik",20,75),
  (3,"Varun",22,76.9),
  (4,"Prem",22,56.78),
  (5,"Sanjay",25,87)

-- COMMAND ----------

SELECT *
FROM employee
WHERE name = "Abhishek"

-- COMMAND ----------

DESCRIBE DETAIL employee

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/employee

-- COMMAND ----------

UPDATE employee
SET name = "Abhi"
WHERE id = 1

-- COMMAND ----------

SELECT *
FROM employee

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/employee

-- COMMAND ----------

DESCRIBE DETAIL employee

-- COMMAND ----------

DESCRIBE HISTORY employee


-- COMMAND ----------

/*Selecting version table */

SELECT *
FROM employee@v2

