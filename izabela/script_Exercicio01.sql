/*
	Listar todos os produtos do tipo "Chocolate"
	listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate
*/

SELECT	pr.NomeProduto,
		ma.NomeMarca,
		pr.QuantidadeEstoque
	FROM Produto pr
	INNER JOIN Marca ma
		ON pr.IdMarca = ma.IdMarca
	WHERE IdTipoProduto = 5
