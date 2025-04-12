-- Databricks notebook source
-- MAGIC %md
-- MAGIC ###Create external locations required for this project
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextks7_bronze
URL 'abfss://bronze@databrickscourseucextks7.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------

DESC EXTERNAL LOCATION databrickscourseucextks7_bronze;

-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls 'abfss://bronze@databrickscourseucextks7.dfs.core.windows.net/'

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextks7_silver
URL 'abfss://silver@databrickscourseucextks7.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextks7_gold
URL 'abfss://gold@databrickscourseucextks7.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential`);

-- COMMAND ----------


