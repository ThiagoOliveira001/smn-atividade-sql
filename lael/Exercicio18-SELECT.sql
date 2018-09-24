--Listar o nome da marca e o nome de todos os seus produtos separados por ","

SELECT M.NomeMarca, 
		SUBSTRING(Produtos, 1, LEN (Produtos) -1)
	FROM  Marca AS M
	CROSS APPLY(
		SELECT (P.NomeProduto  + ',') 
		FROM Produto AS P
		WHERE M.IdMarca =P.IdMarca
		FOR XML PATH('') )
	ap (Produtos) 
	 
