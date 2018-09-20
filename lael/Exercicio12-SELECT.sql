--listar o nome, marca, quantidade vendida e valor do lucro obtido
-- ((valor venda - valor compra) * quantidade vendida) dos 10 produtos mais lucrativos (Somente produtos pagos)

SELECT * FROM Marca

SELECT * FROM Venda

SELECT TOP(10) (SUM((p.ValorVenda) - (p.ValorCompra)) * (VI.Quantidade)) AS 'Lucro', P.NomeProduto, M.NomeMarca, VI.Quantidade 
	FROM Produto AS P
	INNER JOIN Marca AS M
		ON P.idMarca = M.idMarca
	INNER JOIN VendaItem AS VI
		ON VI.idVenda = P.IdProduto
	INNER JOIN Venda AS V
		ON VI.idVenda = VI.IdVenda
	WHERE V.DataPagamento IS NOT NULL
	GROUP BY P.NomeProduto, M.NomeMarca, VI.Quantidade
	ORDER BY Lucro 

