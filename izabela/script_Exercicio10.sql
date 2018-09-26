/*
	Listar todos os produtos e data da ultima compra
	listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra
*/

SELECT	ca.NomeCliente,
		pr.NomeProduto,
		ma.NomeMarca,
		pr.ValorVenda,
		pr.ValorCompra,
		ca.DataVenda
	FROM Produto pr WITH(NOLOCK)
	INNER JOIN Marca ma WITH(NOLOCK)
	  ON pr.IdMarca = ma.IdMarca
	CROSS APPLY (SELECT TOP 1 DataVenda, NomeCliente
	FROM VendaITem vi WITH(NOLOCK)
	INNER JOIN Venda ve WITH(NOLOCK)
	  ON vi.IdVenda = ve.IdVenda
	INNER JOIN Cliente cl WITH(NOLOCK)
	  ON ve.IdCliente = cl.IdCliente
	WHERE vi.IdProduto = pr.IdProduto
	ORDER BY DataVenda DESC) ca
