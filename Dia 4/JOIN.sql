-- Databricks notebook source
-- DBTITLE 1,Juntando dados de tabelas separadas
SELECT T1.*, -- tudo da T1
       T2. descUF -- UF da T2 
FROM silver_olist.pedido AS T1
LEFT JOIN silver_olist.cliente AS T2
ON T1.idCliente = T2.idCliente -- conexão(chave)

-- COMMAND ----------


