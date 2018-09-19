USE LojaDoces;
GO
SELECT p.NomeProduto,
	   m.NomeMarca,
	   p.ValorCompra,
	   p.ValorVenda,
	   p.QuantidadeEstoque
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
ORDER BY p.NomeProduto ASC;