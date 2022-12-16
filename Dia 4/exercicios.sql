-- Databricks notebook source
--lista de pedidos feitos dezembro de 2017  e entreguescom atraso
SELECT*
FROM silver_olist.pedido
WHERE Year(dtPedido)= 2017
AND Month(dtPedido)= 12
AND descSituacao= 'delivered'
AND date(dtEntregue) > date(dtEstimativaEntrega)



-- COMMAND ----------

-- pedidos com duas ou mais parcelas de R$20

SELECT*,
ROUND(vlPagamento/nrPacelas, 2) AS valor_da_parcela -- criando a coluna para visualizar se está correto


FROM silver_olist.pagamento_pedido
WHERE nrPacelas>=2
AND (vlPagamento/nrPacelas)< 20




-- COMMAND ----------

-- Criando colunas com  porcentagem de frete de itens de pedidos
SELECT*,
vlPreco+vlFrete AS valor_total,
vlFrete/(vlPreco+vlFrete) As preco_frete,
CASE
WHEN vlFrete/(vlPreco+vlFrete)<= 0.1 THEN '10%'
WHEN vlFrete/(vlPreco+vlFrete)<= 0.25 THEN '10% a 25%'
WHEN vlFrete/(vlPreco+vlFrete)<= 0.5 THEN '25% a 50%'
ELSE '>50%'
END AS porcent_frete
FROM silver_olist.item_pedido


-- COMMAND ----------


