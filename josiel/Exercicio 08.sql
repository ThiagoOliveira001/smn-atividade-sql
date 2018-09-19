SELECT TOP 10 C.NomeCliente, C.Sexo, SUM(VI.Quantidade) as Quantidade, V.DataVenda
	FROM VendaItem AS VI
	INNER JOIN Venda AS V
	ON VI.IdVenda = V.IdVenda
	INNER JOIN Cliente AS C
	ON V.IdCliente = C.IdCliente
	WHERE V.DataPagamento IS NULL
	GROUP BY C.NomeCliente, C.Sexo, V.DataVenda