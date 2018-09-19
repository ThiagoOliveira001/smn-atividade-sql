--listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate

SELECT * FROM Marca
SELECT * FROM Produto
SELECT * FROM TipoProduto

SELECT Produto.NomeProduto AS NomeProduto, 
		Marca.NomeMarca AS Marca, Produto.QuantidadeEstoque 
		AS QuantidadeEstoque FROM Produto
	INNER JOIN Marca 
		ON Produto.IdMarca = Marca.IdMarca
	WHERE IdTipoProduto = 5 
