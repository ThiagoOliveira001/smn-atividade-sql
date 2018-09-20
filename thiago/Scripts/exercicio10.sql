USE LojaDoces
GO
SELECT p.NomeProduto,
	   m.NomeMarca,
	   p.ValorVenda,
	   p.ValorCompra,
	   ap.DataVenda,
	   ap.NomeCliente
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
CROSS APPLY
(
	SELECT TOP(1)
		   v.DataVenda,
		   c.NomeCliente
	FROM Venda AS v
		INNER JOIN Cliente AS c ON c.IdCliente = v.IdCliente
		INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
	WHERE vi.IdProduto = p.IdProduto
	ORDER BY v.DataVenda DESC
) ap
ORDER BY p.NomeProduto