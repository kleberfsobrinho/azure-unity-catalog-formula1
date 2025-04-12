-- Databricks notebook source
-- MAGIC %md
-- MAGIC ###Create Catalogs and Schemas required for the project
-- MAGIC 1. Catalog - formula1dev (Without managed location)
-- MAGIC 2. Schemas - bronze, silver, gold (With managed location)

-- COMMAND ----------

CREATE CATALOG IF NOT EXISTS formula1_dev;

-- COMMAND ----------

USE CATALOG formula1_dev;

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS bronze
MANAGED LOCATION 'abfss://bronze@databrickscourseucextks7.dfs.core.windows.net/'

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS silver
MANAGED LOCATION 'abfss://silver@databrickscourseucextks7.dfs.core.windows.net/'

-- COMMAND ----------

CREATE SCHEMA IF NOT EXISTS gold
MANAGED LOCATION 'abfss://gold@databrickscourseucextks7.dfs.core.windows.net/'

-- COMMAND ----------

SHOW SCHEMAS;

-- COMMAND ----------


