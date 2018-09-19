/*
QUERY 09 - Listar o total de vendas pagas por marca
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome da marca, o valor total de lucro obtido e a quantidade total de produtos, ordenar por lucro.
SELECT M.NomeMarca, (SUM(P.ValorVenda)-SUM(P.ValorCompra)) * SUM(VI.Quantidade) as Lucro,
       SUM(VI.Quantidade) as Quantidade
FROM Produto as P
INNER JOIN VendaItem AS VI ON VI.IdProduto = P.IdProduto
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
GROUP BY M.NomeMarca
ORDER BY Lucro
---------------------------------------------------------------------------------------