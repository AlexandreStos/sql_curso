-- Databricks notebook source
SELECT count(*)--linhas não nulas
FROM silver_olist.cliente

-- COMMAND ----------

SELECT count(*) AS linhas_n_nulas,
COUNT(idCliente) AS clintes_n_nulos,
COUNT(distinct idCliente) AS clientes_distintos,
COUNT(distinct idClienteUnico) AS clientes_unico_distintos
FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
COUNT(*)
FROM silver_olist.cliente
WHERE descCidade = 'presidente prudente'


-- COMMAND ----------

SELECT 
COUNT(*) AS qtLinhas,
COUNT(distinct idCliente) AS qtClientes,
COUNT(distinct idClienteUnico) AS qtClientesUnicos
FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente', 'curitiba')



-- COMMAND ----------

SELECT

ROUND(AVG(vlPreco),2) AS media, --media com arredondamento
MAX(vlPreco) AS valormax,
MIN(vlPreco) AS valormin,
ROUND(PERCENTILE(vlPreco, 0.5),2) AS mediana

FROM silver_olist.item_pedido


-- COMMAND ----------

-- DBTITLE 1,group_by
SELECT 
descUF,
COUNT(*)
FROM silver_olist.cliente
GROUP BY descUF


-- COMMAND ----------


