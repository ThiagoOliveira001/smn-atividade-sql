-- 06 - Listar produtos e quantidade vendidos em 2018
-- Listar o nome do produto e quantidade

USE LojaDoces

SELECT	p.NomeProduto,
		vi.Quantidade
		FROM VendaItem vi
		INNER JOIN Produto p
			ON vi.IdProduto = p.IdProduto
		INNER JOIN Venda v
			ON vi.IdVenda = v.IdVenda
		WHERE YEAR(v.DataVenda) = 2018
