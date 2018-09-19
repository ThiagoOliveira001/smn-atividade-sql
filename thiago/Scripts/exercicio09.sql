SELECT m.NomeMarca,
	   COUNT(DISTINCT p.IdProduto) AS Produtos,
	   SUM(vi.Quantidade * (p.ValorVenda - p.ValorCompra)) AS Lucro
FROM Marca AS m
	INNER JOIN Produto As p ON p.IdMarca = m.IdMarca
	LEFT JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
	LEFT JOIN Venda AS v ON v.IdVenda = vi.IdVenda
GROUP BY m.NomeMarca
ORDER BY Lucro DESC;



