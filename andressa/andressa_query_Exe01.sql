/*
QUERY 01 - Listar todos os produtos do tipo "Chocolate"
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate--
SELECT P.IdProduto, P.NomeProduto, M.NomeMarca, P.QuantidadeEstoque
FROM Produto as P
INNER JOIN Marca as M
ON P.IdMarca = M.IdMarca
WHERE P.IdTipoProduto=5
---------------------------------------------------------------------------------------