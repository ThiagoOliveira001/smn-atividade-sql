--listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos

--SELECT * FROM Produto
--SELECT * FROM Marca

SELECT P.NomeProduto, m.NomeMarca, p.ValorVenda, p.ValorCompra, p.QuantidadeEstoque  FROM Produto AS p
	INNER JOIN Marca AS m
		ON P.IdMarca = m.IdMarca