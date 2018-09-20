/*
QUERY 18 - Listar marcas e todos os seus produtos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome da marca e o nome de todos os seus produtos separados por ","
SELECT  M.NomeMarca as Marca,		
	COALESCE(
		(SELECT CAST(P.NomeProduto AS VARCHAR(50)) + ' , ' AS [text()]
		 FROM Produto AS P		 
		 WHERE P.IdMarca = M.IdMarca			 
		 FOR XML PATH(''), TYPE).value('.[1]', 'VARCHAR(MAX)'), '') AS Produtos
FROM Marca AS M
GROUP BY M.NomeMarca, M.IdMarca
ORDER BY Marca
---------------------------------------------------------------------------------------

