--18 - Listar marcas e todos os seus produtos
--Listar o nome da marca e o nome de todos os seus produtos separados por ","

USE LojaDoces

SELECT	m.NomeMarca +' , '+ p.NomeProduto AS Produtos
FROM	Produto p
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca