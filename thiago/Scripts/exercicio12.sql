USE LojaDoces;
GO
SELECT TOP(10)
	   p.NomeProduto,
       m.NomeMarca,
	   SUM(vi.Quantidade) AS Qtde,
	   SUM(vi.Quantidade * (p.ValorVenda - p.ValorCompra)) AS Lucro
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
	INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
	INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
WHERE v.DataPagamento IS NOT NULL
GROUP BY p.NomeProduto,m.NomeMarca
ORDER BY Lucro DESC