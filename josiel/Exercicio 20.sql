SELECT C.NomeCliente, C.Sexo, FLOOR(DATEDIFF(DAY, DataNascimento, GETDATE()) / 365.25) AS Idade, ISNULL(CA.NomeProduto, ' ') AS 'Produto Favorito'
	FROM Cliente AS C
	OUTER APPLY(
		SELECT TOP 1 P.NomeProduto
			FROM Produto AS P
			INNER JOIN VendaItem AS VI
			ON P.IdProduto = VI.IdProduto
			INNER JOIN Venda AS V
			ON VI.IdVenda = V.IdVenda
			WHERE V.IdCliente = C.IdCliente
			GROUP BY P.NomeProduto
			ORDER BY SUM(VI.Quantidade) DESC) AS CA
		ORDER BY C.NomeCliente
