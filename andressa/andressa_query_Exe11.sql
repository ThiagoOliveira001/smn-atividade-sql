/*
QUERY 11 -Listar a quantidade de produtos por marca
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome da marca, e quantidade de produtos em estoque
SELECT M.NomeMarca, SUM(P.QuantidadeEstoque) as Quantidade
FROM Marca as M
INNER JOIN Produto AS P ON P.IdMarca = M.IdMarca
GROUP BY M.NomeMarca
---------------------------------------------------------------------------------------