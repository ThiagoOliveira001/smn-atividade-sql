DECLARE @QtdCliente int
SELECT @QtdCliente = COUNT(IdCliente) FROM Cliente
PRINT @QtdCliente

SELECT P.NomeProduto, M.NomeMarca, CAST(ROUND(((CAST(COUNT(CA.IdCliente) AS DECIMAL) * 100) / @QtdCliente), 2) AS DECIMAL(10,2)) AS Porcentagem
	FROM Produto AS P
	INNER JOIN Marca AS M
	ON P.IdMarca = M.IdMarca
	OUTER APPLY(
		SELECT C.IdCliente 
			FROM Cliente AS C
			INNER JOIN Venda AS V
			ON C.IdCliente = V.IdCliente
			INNER JOIN VendaItem AS VI
			ON V.IdVenda = VI.IdVenda
			WHERE VI.IdProduto = P.IdProduto AND V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
			GROUP BY C.IdCliente) AS CA
	GROUP BY P.NomeProduto, M.NomeMarca
