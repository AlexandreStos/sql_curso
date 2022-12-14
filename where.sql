-- Databricks notebook source
select * 
from silver_olist.pedido
where descSituacao= 'canceled'

--limit 100


-- COMMAND ----------

select *
from silver_olist.pedido
where descSituacao= 'canceled'
AND year(dtPedido)= '2018'

--limit 100


-- COMMAND ----------

select * 
from silver_olist.pedido
where (descSituacao= 'canceled' OR descSituacao='shipped')
AND year(dtPedido)= '2018'

-- devemos usar os parenteses para separar as logicas


-- COMMAND ----------

-- outra maneira de escrever o OR/ usando IN
select * 
from silver_olist.pedido
where descSituacao IN ('canceled','shipped')
AND year(dtPedido)= '2018'

--  concatenando

-- COMMAND ----------

-- outra maneira de escrever o OR/ usando IN
select *,
datediff(dtEStimativaEntrega, dtAprovado) AS -- data de previsão
from silver_olist.pedido
where descSituacao IN ('canceled','shipped')
AND year(dtPedido)= '2018'
AND datediff(dtEStimativaEntrega, dtAprovado)>30

-- datas maiores que 30 dias 
