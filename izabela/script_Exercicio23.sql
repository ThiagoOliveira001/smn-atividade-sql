/*
	Listar o valor gasto acumulado por cliente e data
*/
SELECT	cl.NomeCliente, 
		ve.DataVenda,
		ca.VG AS 'Valor Gasto',
	   CONVERT(varchar(60), SUM(ca.VG) OVER (PARTITION BY cl.NomeCliente ORDER BY ve.IdVenda), 1) AS 'Valor Acumulado'
	FROM Cliente cl WITH(NOLOCK)
	INNER JOIN Venda ve WITH(NOLOCK)
	  ON ve.IdCliente = cl.IdCliente
	CROSS APPLY (
	SELECT SUM(vi.Quantidade * pr.ValorVenda) AS 'VG'
		FROM VendaItem vi WITH(NOLOCK)
		INNER JOIN Produto pr WITH(NOLOCK)
		  ON vi.IdProduto = pr.IdProduto
		INNER JOIN Venda v2 WITH(NOLOCK)
		  ON vi.IdVenda = v2.IdVenda
		WHERE v2.IdVenda = ve.IdVenda) AS ca
	GROUP BY cl.NomeCliente, ve.DataVenda, ca.VG, ve.IdVenda
	ORDER BY cl.NomeCliente