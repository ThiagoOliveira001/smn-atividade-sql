--listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra



SELECT NomeProduto, NomeCliente, NomeMarca, P.ValorVenda, P.ValorCompra, DataVenda
FROM Produto as P
	Cross Apply(
	Select Top (1) NomeCliente, NomeMarca, ValorVenda, ValorCompra, DataVenda FROM VendaItem
	INNER JOIN 
		Marca AS M ON 
		M.IdMarca = P.IdMarca
	INNER JOIN 
		Venda AS V ON 
		V.IdVenda = VendaItem.IdVenda
	INNER JOIN 
		Cliente AS C ON 
		C.IdCliente = V.IdCliente
	WHERE VendaItem.IdProduto = P.IdProduto
	Order by DataVenda DESC) as tabela



		

