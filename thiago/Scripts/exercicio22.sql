USE LojaDoces;
GO
SELECT TOP(10) 
	c.NomeCliente,
	c.Sexo,
	ISNULL(AVG(DATEDIFF(day,v.DataPagamento,v.DataVenda)),0) AS Tempo
FROM Cliente AS c
	INNER JOIN Venda AS v ON v.IdCliente = c.IdCliente
GROUP BY c.NomeCliente,c.Sexo
ORDER BY Tempo ASC