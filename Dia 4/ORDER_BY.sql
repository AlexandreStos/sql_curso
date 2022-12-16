-- Databricks notebook source
SELECT 
descUF,
COUNT(*)
FROM silver_olist.cliente
GROUP BY descUF-- agrupando por estados
ORDER BY descUF -- ordenando por estados

-- COMMAND ----------

SELECT 
descUF,
COUNT(*)
FROM silver_olist.cliente
GROUP BY descUF-- agrupando por estados
ORDER BY 2 -- Ordenando pela segunda coluna da sua base

-- COMMAND ----------

SELECT 
descUF,
COUNT(*)
FROM silver_olist.cliente
GROUP BY descUF-- agrupando por estados
ORDER BY descUF DESC -- Ordenando pela segunda coluna da sua base
