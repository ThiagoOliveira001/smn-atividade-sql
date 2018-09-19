--listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra


SELECT 
	P.NomeProduto,
	M.NomeMarca,
	P.ValorCompra,
	P.ValorVenda,
	C.NomeCliente
FROM
	Produto as P INNER JOIN Marca AS M ON
		P.IdMarca = M.IdMarca
	INNER JOIN VendaItem AS VI ON
		P.IdProduto = VI.IdProduto
	INNER JOIN Venda as V on
		VI.IdVenda = V.IdVenda
	INNER JOIN Cliente AS C ON
		V.IdCliente = C.IdCliente
WHERE C.NomeCliente = ULTIMO CARA QUE COMPROU AND
		V.DATACOMPRA = ULTIMA DATA




		

