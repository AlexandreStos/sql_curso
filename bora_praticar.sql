-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- Selecionar paulistanos

SELECT*
FROM silver_olist.cliente
WHERE descCidade='sao paulo'

-- COMMAND ----------

-- DBTITLE 1,Exercício 02
--02 clientes paulistas

SELECT*
FROM silver_olist.cliente
WHERE descUF='SP'


-- COMMAND ----------

-- DBTITLE 1,Exercícios 3
-- Vendedores cariocas(cidade) ou paulistas(estado)
SELECT*
FROM silver_olist.vendedor
WHERE descCidade='rio de janeiro'
OR descUF= 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 4
-- produtos de perfumaria e bebes maiores que 5 cm
SELECT*
FROM silver_olist.produto
WHERE descCategoria IN ('perfumaria', 'bebes')
AND vlAlturaCm >5

