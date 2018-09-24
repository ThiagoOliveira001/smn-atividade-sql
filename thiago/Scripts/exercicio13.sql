USE LojaDoces;
GO
SELECT TOP(15)
	   c.IdCliente,
	   c.NomeCliente,
	   c.Sexo,
	   c.DataNascimento,
	   SUM(vi.Quantidade) AS Qtde
FROM Cliente AS c
	INNER JOIN Venda AS v ON v.IdCliente = c.IdCliente
	INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
WHERE v.DataPagamento IS NOT NULL
GROUP BY c.NomeCliente,c.Sexo,c.DataNascimento,c.IdCliente
ORDER BY Qtde DESC

