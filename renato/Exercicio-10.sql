-- 10 - Listar todos os produtos e data da ultima compra
-- listar o nome do produto, marca, valor de venda, valor de compra, nome do ultimo comprador e data da ultima compra

-- Produto.NomeProduto
-- Marca.NomeMarca
-- Produto.ValorVenda
-- Produto.ValorCompra
-- Cliente.NomeCliente ultimo comprador
-- Venda.DataPagamento ultima compra

USE LojaDoces

SELECT	p.NomeProduto,
		m.NomeMarca,
		p.ValorVenda,
		p.ValorCompra,
		ca.NomeCliente,
		ca.DataVenda
		FROM Produto p
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca
		CROSS APPLY (
			SELECT TOP 1	v.DataVenda,
							c.NomeCliente
							FROM Venda v
							INNER JOIN Cliente c
								ON v.IdCliente = c.IdCliente
							INNER JOIN VendaItem vi
								ON vi.IdVenda = v.IdVenda
							WHERE vi.IdProduto = p.IdProduto
							ORDER BY v.DataVenda DESC
							) AS ca
		ORDER BY p.NomeProduto