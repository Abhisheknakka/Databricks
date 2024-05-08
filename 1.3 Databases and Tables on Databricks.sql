-- Databricks notebook source
CREATE DATABASE dummmy

-- COMMAND ----------

USE dummmy;

CREATE TABLE IF NOT EXISTS shapes
(WIDTH int, HEIGHT int, breadth int);
INSERT INTO shapes
VALUES 
(1,2,2),
(2,1,3),
(1,2,3),
(9,8,2)

-- COMMAND ----------

CREATE table if not exists smartphone
( id INT,
  name STRING,
  brand STRING,
  year INT  
  );

INSERT INTO smartphone
VALUES
(1,"IPHONE 13","Apple",2014),
(2,"Pixel 7 a","Google",2021);


-- COMMAND ----------

SHOW TABLES

-- COMMAND ----------

CREATE VIEW googlephones_view
as select *
FROM smartphone
WHERE brand = "Google";
 

-- COMMAND ----------

select * from googlephones_view

-- COMMAND ----------

DROP VIEW googlephones_view

-- COMMAND ----------

CREATE TEMP VIEW temp_googlephones_view
as select distinct brand
FROM smartphone
WHERE brand = "Google";
 

SELECT * from temp_googlephones_view

-- COMMAND ----------

show tables
/* it gives only table sand views but not temporary view */

-- COMMAND ----------

CREATE GLOBAL TEMP VIEW GLOBAL_temp_googlephones_view
as select distinct brand
FROM smartphone
WHERE brand = "Google";
 

SELECT * from GLOBAL_temp_googlephones_view

-- COMMAND ----------

show tables;
show tables IN GLOBAL_TEMP;

/* GLOBAL TEMP WORKS IN NEWS NOTEBOOKS/SESSIONS TOO BUT NOT NORMAL TEMP VIEWS
