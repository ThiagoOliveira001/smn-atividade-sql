/*
	listar m�s/ano e m�dia mensal de vendas no m�s/ano de referencia.
	M�dia em valor e quantidade.
*/
SELECT	FORMAT(ve.DataVenda, 'yyyy/MM') AS 'Data',
		AVG(vi.Quantidade) AS 'M�dia Quantidade',
		CONCAT('R$ ', CAST(AVG(pr.ValorVenda * vi.Quantidade) AS numeric(15, 2))) AS 'M�dia Valor'
	FROM VendaItem vi
	INNER JOIN Venda ve WITH(NOLOCK)
	  ON vi.IdVenda = ve.IdVenda
	INNER JOIN Produto pr WITH(NOLOCK)
	  ON vi.IdProduto = pr.IdProduto
	GROUP BY FORMAT(ve.DataVenda, 'yyyy/MM')
	ORDER BY Data DESC
