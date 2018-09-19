/*
QUERY 04 - Listar todos os produtos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos
SELECT P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra, P.QuantidadeEstoque
FROM Produto as P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
---------------------------------------------------------------------------------------