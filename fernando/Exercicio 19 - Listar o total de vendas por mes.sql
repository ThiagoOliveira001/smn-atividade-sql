listar o mes/ano, a quantidade total de vendas (pagas) e a quantidade total de vendas (não pagas) no mes/ano de referencia


SELECT FORMAT(v.DataVenda,'MM/yyyy') AS Referência,
	COUNT(CASE WHEN v.DataPagamento IS NOT NULL THEN 1 ELSE NULL END) AS 'Vendas Pagas',
	COUNT(CASE WHEN v.DataPagamento IS NULL THEN 1 ELSE NULL END) AS 'Vendas Nao Pagas'
FROM Venda as v 
GROUP BY FORMAT(v.DataVenda,'MM/yyyy'), FORMAT(v.DataVenda, 'yyyy')
ORDER BY FORMAT(v.DataVenda, 'yyyy') ASC


