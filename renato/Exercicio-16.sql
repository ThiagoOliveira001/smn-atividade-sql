--16 - Listar todos os produtos que não foram vendidos
--listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos

USE LojaDoces

SELECT	p.NomeProduto,
		tp.NomeTipoProduto,
		m.NomeMarca,
		p.ValorVenda
		FROM Produto p
		INNER JOIN Marca m
			ON m.IdMarca = p.IdMarca
		INNER JOIN TipoProduto tp
			ON tp.IdTipoProduto = p.IdTipoProduto
		LEFT JOIN VendaItem vi
			ON vi.IdProduto = p.IdProduto
		WHERE vi.IdProduto IS NULL