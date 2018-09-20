/*
QUERY 06 - Listar produtos e quantidade vendidos em 2018
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do produto e quantidade
SELECT P.NomeProduto, SUM(VI.Quantidade)
FROM Produto as P
INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
INNER JOIN Venda AS V ON V.IdVenda= VI.IdVenda
WHERE YEAR(V.DataVenda)=2018
GROUP BY P.NomeProduto
---------------------------------------------------------------------------------------