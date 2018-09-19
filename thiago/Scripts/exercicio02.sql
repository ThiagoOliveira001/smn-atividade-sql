USE LojaDoces;
GO
SELECT p.NomeProduto,
	   m.NomeMarca,
	   t.NomeTipoProduto,
	   c.NomeCliente,
	   v.DataVenda,
	   v.DataPagamento 
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
	INNER JOIN TipoProduto AS t ON t.IdTipoProduto = p.IdTipoProduto
	INNER JOIN VendaItem AS vi ON vi.IdProduto = p.IdProduto
	INNER JOIN Venda AS v ON v.IdVenda = vi.IdVenda
	INNER JOIN Cliente AS c ON c.IdCliente = v.IdCliente
WHERE YEAR(v.DataPagamento) = 2018 AND MONTH(v.DataPagamento) = 1;