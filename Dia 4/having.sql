-- Databricks notebook source
-- estados com mais de 100 vendedores

SELECT descUF,
COUNT(idVendedor) AS n_vendedores
FROM silver_olist.vendedor
WHERE descUF IN ('SP', 'MG', 'RJ', 'ES') -- vem sempre depois de FROM
GROUP BY descUF
HAVING n_vendedores >=100 -- FILTRO (somente com mais de 100 vendedores)
ORDER BY  n_vendedores DESC

