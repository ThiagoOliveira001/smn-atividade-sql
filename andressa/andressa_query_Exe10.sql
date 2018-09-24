/*
QUERY 10 - Listar todos os produtos e data da ultima compra
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome do produto, marca, valor de venda, valor de compra, 
--nome do ultimo comprador e data da ultima compra
SELECT P.NomeProduto, M.NomeMarca,P.ValorVenda, P.ValorCompra, CA.NomeCliente,CA.DataVenda
FROM Produto AS P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
CROSS APPLY(
SELECT TOP 1 V.DataVenda, C.NomeCliente
FROM VendaItem as VI
INNER JOIN Venda AS V ON V.IdVenda = VI.IdVenda
INNER JOIN Cliente AS C ON C.IdCliente = V.IdCliente
WHERE P.IdProduto=VI.IdProduto
ORDER BY V.DataVenda DESC
) AS CA
---------------------------------------------------------------------------------------

