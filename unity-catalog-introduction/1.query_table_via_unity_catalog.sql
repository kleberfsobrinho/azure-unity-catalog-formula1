-- Databricks notebook source
CREATE IF NOT EXISTS CATALOG demo_catalog;

-- COMMAND ----------

USE CATALOG demo_catalog;
CREATE SCHEMA demo_schema;

-- COMMAND ----------

SELECT * FROM demo_catalog.demo_schema.circuits

-- COMMAND ----------

SELECT current_catalog()

-- COMMAND ----------

SHOW CATALOGS

-- COMMAND ----------

SELECT current_schema();

-- COMMAND ----------

SHOW SCHEMAS;

-- COMMAND ----------

USE CATALOG demo_catalog;
USE SCHEMA demo_schema;
SELECT * FROM circuits

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df = spark.table('demo_catalog.demo_schema.circuits')

-- COMMAND ----------

-- MAGIC %python
-- MAGIC display(df)

-- COMMAND ----------


