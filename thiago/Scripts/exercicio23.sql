USE LojaDoces;
GO
SELECT c.NomeCliente,
	v.DataVenda,
	ap.gasto,
	SUM(ap.gasto) OVER (
		PARTITION BY c.NomeCliente
		ORDER BY c.NomeCliente,v.DataVenda ASC
		ROWS UNBOUNDED PRECEDING
	) AS Acumulado
FROM Cliente AS c
	INNER JOIN Venda AS v ON v.IdCliente = c.IdCliente
CROSS APPLY( 
	SELECT  SUM((vi.Quantidade * p.ValorVenda)) AS gasto
	FROM VendaItem AS vi
		INNER JOIN Produto AS p ON p.IdProduto = vi.IdProduto
	WHERE vi.IdVenda = v.idVenda
	GROUP BY vi.IdVenda
) ap
GROUP BY c.idCliente,c.NomeCliente,v.IdVenda,v.DataVenda,v.IdVenda,ap.gasto
ORDER BY c.NomeCliente,v.DataVenda ASC
