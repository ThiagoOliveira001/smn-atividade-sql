/*
	Listar todos os produtos que não foram vendidos
	listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos
*/

SELECT	pr.NomeProduto,
		tp.NomeTipoProduto,
		ma.NomeMarca,
		pr.ValorVenda 
	FROM Produto pr WITH(NOLOCK)
	INNER JOIN Marca ma WITH(NOLOCK)
	  ON pr.IdMarca = ma.IdMarca
	INNER JOIN TipoProduto tp WITH(NOLOCK)
	  ON pr.IdTipoProduto = tp.IdTipoProduto
	LEFT JOIN VendaItem vi WITH(NOLOCK)
	  ON pr.IdProduto = vi.IdProduto
	WHERE vi.IdVendaItem IS NULL
	ORDER BY tp.NomeTipoProduto
