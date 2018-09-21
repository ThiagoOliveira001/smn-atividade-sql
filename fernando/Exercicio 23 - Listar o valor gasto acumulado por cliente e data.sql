Select  V.idVenda,
		C.NomeCliente AS Nome,
		V.DataVenda AS DATA,
		X.ValorTotal,
		SUM (X.ValorTotal) OVER(Partition by C.NomeCliente ORDER BY V.IdVenda) AS 'Gasto Acumulado'
		From Cliente C
		INNER JOIN Venda V
			 On C.IdCliente = V.IdCliente
		CROSS APPLY (Select	SUM (VI.Quantidade * P.ValorVenda) AS ValorTotal
						FROM VendaItem VI
							INNER JOIN Produto P
								ON VI.IdProduto  = P.IdProduto
							INNER JOIN Venda v2
								ON v2.IdVenda = vi.IdVenda 
							WHERE v2.IdVenda = v.IdVenda) AS X
							GROUP BY V.IdVenda, v.DataVenda, c.NomeCliente, x.ValorTotal
							ORDER BY NomeCliente