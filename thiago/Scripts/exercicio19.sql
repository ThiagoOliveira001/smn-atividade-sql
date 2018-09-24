USE LojaDoces;
GO
SELECT FORMAT(v.DataVenda,'MM/yyyy') AS DataAlvo,
	COUNT(CASE WHEN v.DataPagamento IS NOT NULL THEN 1 ELSE NULL END) AS VendasPagas,
	COUNT(CASE WHEN v.DataPagamento IS NULL THEN 1 ELSE NULL END) AS VendasNaoPagas
FROM Venda AS v
GROUP BY FORMAT(v.DataVenda,'MM/yyyy'), FORMAT(v.DataVenda, 'yyyy')
ORDER BY FORMAT(v.DataVenda, 'yyyy') ASC


