-- Databricks notebook source
-- MAGIC %fs ls

-- COMMAND ----------

-- MAGIC 
-- MAGIC %fs ls databricks-datasets

-- COMMAND ----------

-- MAGIC %fs head --maxBytes=1000 dbfs:/databricks-datasets/flights/departuredelays.csv

-- COMMAND ----------

--Listing all  data sample sets -> 2nd cell
-- 3 rd cell : --Preview of the data, default: 65000 bytes, without neither infer nor manual data type descriotions, all attributes will be string, without allowing modifying


-- COMMAND ----------

DROP TABLE IF EXISTS flights;

CREATE TABLE flights
  USING csv
  OPTIONS (path "/databricks-datasets/flights/departuredelays.csv", header "true", inferSchema "true")

-- COMMAND ----------

select * from flights

-- COMMAND ----------

desc table flights
