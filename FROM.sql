-- Databricks notebook source
SELECT*FROM silver_olist.pagamento_pedido
-- seleciona tudo da tabela silver_olist.pedido

-- COMMAND ----------

select idPedido,
       descSituacao
From silver_olist.pedido

-- COMMAND ----------

select idPedido,
       descSituacao

From silver_olist.pedido
limit 5

-- COMMAND ----------

select * ,
DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

From silver_olist.pedido

