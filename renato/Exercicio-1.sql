-- 01 - Listar todos os produtos do tipo "Chocolate"
-- listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate

-- Chocolate -> IdTipoProduto = 5
-- Produto.NomeProduto
-- Marca.NomeMarca
-- Produto.QuantidadeEstoque
USE LojaDoces

SELECT	p.NomeProduto,
		m.NomeMarca,
		p.QuantidadeEstoque 
	FROM Produto p
	INNER JOIN Marca m
		ON p.IdMarca = m.IdMarca 
	INNER JOIN TipoProduto t
		ON p.IdTipoProduto = t.IdTipoProduto
	WHERE t.IdTipoProduto = 5