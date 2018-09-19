USE LojaDoces;
GO
SELECT TOP(10)
	   c.NomeCliente,
	   c.Sexo,
	   COUNT(vi.IdVendaItem) AS Itens,
	   MIN(v.DataVenda) AS 'Primeira Venda'
FROM Cliente AS c
	INNER JOIN Venda AS v ON v.IdCliente = c.IdCliente
	INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
WHERE v.DataPagamento IS NULL
GROUP BY c.NomeCliente,c.Sexo,v.DataVenda
ORDER BY Itens DESC;
