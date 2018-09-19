USE LojaDoces;
GO
SELECT p.NomeProduto, m.NomeMarca, p.QuantidadeEstoque 
FROM Produto AS p
	INNER JOIN Marca AS m ON m.IdMarca = p.IdMarca
	INNER JOIN TipoProduto AS t ON t.IdTipoProduto = p.IdTipoProduto
WHERE t.NomeTipoProduto LIKE 'Chocolate';
