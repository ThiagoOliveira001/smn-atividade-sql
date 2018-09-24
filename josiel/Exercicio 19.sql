SELECT MONTH(v.DataVenda) AS Mes, YEAR(v.DataVenda) AS Ano,
	SUM(CASE WHEN 
			v.DataPagamento IS NULL OR V.DataPagamento > GETDATE() THEN 1
		ELSE
			0
		END) AS NaoPago,
	SUM(CASE WHEN 
			v.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE() THEN 1
		ELSE
			0
		END) AS Pago
	FROM Venda V
	INNER JOIN VendaItem VI
	ON V.IdVenda = VI.IdVenda
	GROUP BY MONTH(V.DataVenda), YEAR(V.DataVenda)
	ORDER BY Ano