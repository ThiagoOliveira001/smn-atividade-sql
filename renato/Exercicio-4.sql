-- 04 - Listar todos os produtos
-- listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos

-- Produto.NomeProduto
-- Marca.NomeMarca
-- Produto.ValorVenda
-- Produto.ValorCompra
-- Produto.QuantidadeEstoque

USE LojaDoces

SELECT	p.NomeProduto,
		m.NomeMarca,
		p.ValorVenda,
		p.ValorCompra,
		p.QuantidadeEstoque
		FROM Produto p
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca
