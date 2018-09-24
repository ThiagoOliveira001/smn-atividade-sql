SELECT NomeMarca,
	COALESCE(
		(SELECT CAST(NomeProduto AS VARCHAR(50)) + ', ' AS [text()]
		 FROM Produto AS P
		 WHERE P.IdMarca = M.IdMarca
		 FOR XML PATH(''), TYPE).value('.[1]', 'VARCHAR(MAX)'), '') AS Produtos
FROM Marca AS M
GROUP BY NomeMarca, M.IdMarca
order by NomeMarca