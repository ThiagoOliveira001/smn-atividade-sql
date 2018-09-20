/*
QUERY 16 - Listar todos os produtos que não foram vendidos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome, tipo, marca e valor de venda de todos os produtos que não foram vendidos
SELECT P.NomeProduto, TI.NomeTipoProduto, M.NomeMarca, P.ValorVenda
FROM Produto AS P
INNER JOIN TipoProduto AS TI ON TI.IdTipoProduto=P.IdTipoProduto
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
LEFT JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
WHERE VI.IdProduto IS NULL
---------------------------------------------------------------------------------------

