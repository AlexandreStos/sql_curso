-- Databricks notebook source
SELECT *,
CASE WHEN descUF ='SP' THEN 'Paulista'
WHEN descUF ='RJ' THEN 'Fluminense'
WHEN descUF ='PR' THEN 'Paranaense'
ELSE 'outros'
END AS descNacionalidade
FROM silver_olist.cliente


-- COMMAND ----------

SELECT *,
CASE WHEN descCidades LIKE '%sao%' THEN'Tem sao no nome'
ELSE 'Não tem sao no nome'
END AS descnao
FROM silver_olist.cliente
