SELECT TOP 15 C.NomeCliente, C.Sexo, C.DataNascimento, SUM(VI.Quantidade) AS Comprado
	FROM Cliente AS C
	INNER JOIN Venda AS V
	ON C.IdCliente = V.IdCliente
	INNER JOIN VendaItem AS VI
	ON V.IdVenda = VI.IdVenda
	WHERE v.DataPagamento IS NOT NULL AND v.DataPagamento < GETDATE()
	GROUP BY C.NomeCliente, C.Sexo, C.DataNascimento
	ORDER BY Comprado DESC