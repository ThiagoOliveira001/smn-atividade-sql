/*
	Listar marcas e todos os seus produtos
	Listar o nome da marca e o nome de todos os seus produtos separados por ","
*/

SELECT ma.NomeMarca,
	COALESCE(
		(SELECT CAST(pr.NomeProduto AS VARCHAR(50)) + ', ' AS [text()]
		 FROM Produto pr WITH(NOLOCK)
		 WHERE pr.IdMarca = ma.IdMarca
		 FOR XML PATH(''), TYPE).value('.[1]', 'VARCHAR(MAX)'), '') AS NomeProduto
	FROM Marca ma WITH(NOLOCK)
	GROUP BY NomeMarca, IdMarca
	ORDER BY NomeMarca