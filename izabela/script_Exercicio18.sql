/*
	Listar marcas e todos os seus produtos
	Listar o nome da marca e o nome de todos os seus produtos separados por ","
*/

SELECT NomeMarca,
	COALESCE(
		(SELECT CAST(NomeProduto AS VARCHAR(50)) + ', ' AS [text()]
		 FROM Produto AS p
		 WHERE p.IdMarca = m.IdMarca
		 FOR XML PATH(''), TYPE).value('.[1]', 'VARCHAR(MAX)'), '') AS NomeProduto
FROM Marca AS m
GROUP BY NomeMarca, IdMarca
ORDER BY NomeMarca