-- 23 - Listar o valor gasto acumulado por cliente e data
-- Listar o valor gasto acumulado por cliente e data

-- auto incremento
-- cláusula OVER

USE LojaDoces

SELECT	c.NomeCliente AS NOME,
		v.DataVenda AS DATA,
		x.ValorTotal AS 'VALOR GASTO',
		SUM(x.ValorTotal) OVER (PARTITION BY c.NomeCliente ORDER BY v.DataVenda ROWS UNBOUNDED PRECEDING) AS 'VALOR ACUMULADO'
		FROM Cliente c
		INNER JOIN Venda v
			ON c.IdCliente = v.IdCliente
		CROSS APPLY ( SELECT	SUM(vi.Quantidade * p.ValorVenda) AS ValorTotal
								FROM VendaItem vi
								INNER JOIN Produto p
									ON vi.IdProduto = p.IdProduto
								WHERE vi.IdVenda = v.IdVenda
								GROUP BY vi.IdVenda
					) AS x
				GROUP BY c.NomeCliente, v.DataVenda, v.IdVenda, x.ValorTotal
				ORDER BY NOME, DATA