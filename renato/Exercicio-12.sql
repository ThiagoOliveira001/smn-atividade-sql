--12 - Listar os produtos mais lucrativos
--listar o nome, marca, quantidade vendida e valor do lucro obtido ((valor venda - valor compra) * quantidade vendida) dos 10 produtos mais lucrativos (Somente produtos pagos)

-- Produto.NomeProduto
-- Marca.NomeMarca
-- 

USE LojaDoces
SELECT TOP 10	p.NomeProduto,
				m.NomeMarca,
				SUM(vi.Quantidade) AS Qtde,
				SUM((p.ValorVenda - p.ValorCompra)*vi.Quantidade) AS Lucro
				FROM Produto p
				INNER JOIN Marca m
					ON p.IdMarca = m.IdMarca
				INNER JOIN VendaItem vi
					ON p.IdProduto = vi.IdProduto
				INNER JOIN Venda v
					ON v.IdVenda = vi.IdVenda
				WHERE v.DataPagamento IS NOT NULL
				GROUP BY p.NomeProduto, m.NomeMarca
				ORDER BY Lucro DESC

