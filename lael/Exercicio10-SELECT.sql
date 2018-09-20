--listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra

SELECT p.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra, uc.NomeCliente, uc.DataVenda
	FROM Produto AS p
	INNER JOIN Marca AS m
	ON P.IdMarca = M.IdMarca 
	CROSS APPLY (
		SELECT TOP 1 V.DataVenda, C.NomeCliente
		FROM VendaItem AS vi
		INNER JOIN Venda AS v
		ON VI.idVenda = V.IdVenda
		INNER JOIN Cliente AS c
		ON V.idCliente = C.IdCliente
		WHERE VI.IdProduto = P.IdProduto
		ORDER BY V.DataVenda DESC) AS uc
		ORDER BY P.NomeProduto
	
