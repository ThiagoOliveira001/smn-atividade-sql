/*
QUERY 05 - Listar clientes e quantidade comprado em 2018
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do cliente e quantidade de produtos diferentes comprados em 2018
SELECT P.NomeProduto, C.NomeCliente, VI.Quantidade, V.DataVenda
FROM Cliente AS C
INNER JOIN Venda as V ON V.IdCliente= C.IdCliente 
INNER JOIN VendaItem AS VI ON VI.IdVenda = V.IdVenda
INNER JOIN Produto AS P ON P.IdProduto= vi.IdProduto
WHERE YEAR(V.DataVenda)=2018
ORDER BY c.NomeCliente
---------------------------------------------------------------------------------------