--17 - Listar os produtos mais vendidos
--listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos

USE LojaDoces

SELECT TOP 10	p.NomeProduto,
				m.NomeMarca,
				p.ValorCompra,
				p.ValorVenda,
				p.QuantidadeEstoque,
				vi.Quantidade AS QuantidadeVendida
				FROM Produto p
				INNER JOIN Marca m
					ON p.IdMarca = m.IdMarca
				INNER JOIN VendaItem vi
					ON p.IdProduto = vi.IdProduto
				ORDER BY QuantidadeVendida DESC

