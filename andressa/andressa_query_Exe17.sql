/*
QUERY 17 - Listar os produtos mais vendidos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos
SELECT TOP 10 P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque, SUM(VI.Quantidade) AS Quantidade
FROM Produto as P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
GROUP BY P.NomeProduto, M.NomeMarca, P.ValorCompra, P.ValorVenda, P.QuantidadeEstoque
ORDER BY Quantidade DESC
---------------------------------------------------------------------------------------

