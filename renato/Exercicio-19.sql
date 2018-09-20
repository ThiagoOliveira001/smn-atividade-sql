--19 - Listar o total de vendas por mes
--listar o mes/ano, a quantidade total de produtos vendidos (pagos) e a quantidade total de produtos vendidos (n�o pagos) no mes/ano de referencia

USE LojaDoces

SELECT	MONTH(v.DataVenda) AS Mes,
		YEAR(v.DataVenda) AS Ano,
		 
		sum(CASE WHEN 
			v.DataPagamento IS NULL THEN 1
		ELSE
			0
		END) AS NaoPago,
		sum(CASE WHEN 
			v.DataPagamento IS NOT NULL THEN 1
		ELSE
			0
		END) AS Pago
		
		FROM Venda v
		INNER JOIN VendaItem vi
			ON v.IdVenda = vi.IdVenda
		GROUP BY MONTH(v.DataVenda),YEAR(v.DataVenda)
		ORDER BY Ano DESC