/*
	Listar todos os produtos
	listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos (em estoque)
*/

SELECT	pr.NomeProduto,
		ma.NomeMarca, 
		pr.ValorVenda,
		pr.ValorCompra,
		SUM(pr.QuantidadeEstoque) as QuantidadeEstoque
	FROM Produto pr WITH(NOLOCK)
	INNER JOIN Marca ma WITH(NOLOCK)
		on pr.IdMarca = ma.IdMarca
	group by pr.IdProduto, pr.NomeProduto, ma.NomeMarca, pr.ValorVenda, pr.ValorCompra, pr.QuantidadeEstoque
