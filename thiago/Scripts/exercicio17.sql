USE LojaDoces;
GO
SELECT  TOP(10)
		p.NomeProduto,
		m.NomeMarca,
		p.ValorCompra,
		p.ValorVenda,
		p.QuantidadeEstoque
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
	INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
GROUP BY p.NomeProduto,m.NomeMarca,p.ValorCompra,p.ValorVenda,p.QuantidadeEstoque
ORDER BY SUM(vi.Quantidade) DESC
 