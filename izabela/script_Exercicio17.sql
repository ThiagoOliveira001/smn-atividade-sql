/*
	Listar os produtos mais vendidos
	listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos
*/

SELECT TOP(10) pr.NomeProduto, ma.NomeMarca, pr.ValorCompra, pr.ValorVenda, pr.QuantidadeEstoque
	FROM VendaItem vi WITH(NOLOCK)
	INNER JOIN Produto pr WITH(NOLOCK)
	  ON vi.IdProduto = pr.IdProduto
	INNER JOIN Marca ma WITH(NOLOCK)
	  ON pr.IdMarca = ma.IdMarca
	GROUP BY pr.NomeProduto, ma.NomeMarca, pr.ValorCompra, pr.ValorVenda, pr.QuantidadeEstoque
	ORDER BY SUM(vi.Quantidade) DESC
