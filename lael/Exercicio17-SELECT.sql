--listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos

SELECT TOP (10) P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque
	FROM Produto AS P
		INNER JOIN Marca AS M
		ON P.IdMarca = M.IdMarca
		INNER JOIN VendaItem AS VI
		ON P.IdProduto = vi.IdProduto
	WHERE VI.IdVenda IS NOT NULL
	GROUP BY P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque
	ORDER BY SUM(Vi.Quantidade) DESC
			 