USE LojaDoces;
GO
SELECT p.NomeProduto,SUM(vi.Quantidade) AS Quantidade
FROM Produto AS p
	INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
	INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
WHERE YEAR(v.DataVenda) = 2018
GROUP BY p.NomeProduto;
