SELECT TOP 10 C.NomeCliente, C.Sexo, AVG(DATEDIFF(MINUTE, V.DataVenda, V.DataPagamento)) AS MEDIA
	FROM Cliente AS C
	INNER JOIN Venda AS V
	ON C.IdCliente = V.IdCliente
	WHERE V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
	GROUP BY C.NomeCliente, C.Sexo
	ORDER BY MEDIA
