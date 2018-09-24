USE LojaDoces;
GO
SELECT (
	p.NomeProduto + ':' +
	m.NomeMarca + ',' +
	FORMAT(
		(CAST(ap.Clientes AS NUMERIC) / CAST((SELECT COUNT(*) FROM Cliente) AS NUMERIC)) * 100,
		'#0.00'
	) +  '% dos usuarios compram')
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
CROSS APPLY(
	SELECT COUNT(DISTINCT c.IdCliente) AS Clientes
	FROM Cliente AS c
		INNER JOIN Venda AS v ON v.IdCliente = c.IdCliente
		INNER JOIN VendaItem AS vi ON vi.IdVenda = v.IdVenda
	WHERE vi.IdProduto = p.IdProduto AND v.DataPagamento IS NOT NULL
) ap
ORDER BY p.NomeProduto ASC
