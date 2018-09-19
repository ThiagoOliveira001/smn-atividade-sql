-- 08 - Listar os top 10 inadimplentes
-- listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga

-- Cliente.NomeCliente
-- Cliente.Sexo
-- 
-- Primeira compra
-- WHERE Venda.DataPagamento IS NULL

USE LojaDoces

SELECT TOP 10	c.NomeCliente,
				c.Sexo,
				COUNT(vi.IdVendaItem) AS Qtde,
				MIN(v.DataVenda) AS 'Primeira compra não paga'
				FROM Venda v
				INNER JOIN VendaItem vi
					ON v.IdVenda = vi.IdVenda
				INNER JOIN Cliente c
					ON c.IdCliente = v.IdCliente
				WHERE v.DataPagamento IS NULL
				GROUP BY c.NomeCliente, c.Sexo, v.DataVenda
				ORDER BY Qtde DESC
-- A ordem de inadimplencia é definida pela quantidade de itens não pagos pelo cliente

