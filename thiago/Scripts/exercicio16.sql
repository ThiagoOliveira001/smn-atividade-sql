USE LojaDoces;
GO
SELECT p.NomeProduto,
	   t.NomeTipoProduto,
	   m.NomeMarca,
	   p.ValorVenda
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
	INNER JOIN TipoProduto AS t ON t.IdTipoProduto = p.IdTipoProduto
	LEFT JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
WHERE vi.IdProduto IS NULL
ORDER BY p.NomeProduto ASC