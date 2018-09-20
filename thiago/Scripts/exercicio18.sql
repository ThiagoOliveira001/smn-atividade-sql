USE LojaDoces;
GO
SELECT m.NomeMarca,
	   SUBSTRING(Produtos,1,LEN(Produtos) - 1)
FROM Marca AS m
CROSS APPLY (
	SELECT (p.NomeProduto + ',')
	FROM Produto AS p
	WHERE p.IdMarca = m.IdMarca
	FOR XML PATH('')
) ap ( Produtos )
