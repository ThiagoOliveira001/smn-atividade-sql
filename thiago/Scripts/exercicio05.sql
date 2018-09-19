USE LojaDoces;
GO
SELECT c.NomeCliente,
	   COUNT(DISTINCT vi.IdProduto) AS 'Produtos Comprados'
FROM Cliente AS c
	LEFT JOIN Venda AS v ON v.IdCliente= c.idCliente
	LEFT JOIN VendaItem AS vi ON vi.IdVenda = v.idVenda
WHERE YEAR(v.DataVenda) = 2018
GROUP BY c.NomeCliente
ORDER BY c.NomeCliente;