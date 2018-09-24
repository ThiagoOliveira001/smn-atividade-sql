/*
QUERY 21 - Listar os produtos e porcentagem dos clientes que compraram
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 21/09/2018
*/

--Listar o nome do produto, marca e porcentagem dos clientes que compraram. 
--EX: nome produto: laka, 41% dos usuarios compram(vendas pagas)

SELECT P.NomeProduto, M.NomeMarca,
(CAST((CAST(COUNT(OA.IdCliente) AS DECIMAL(10,2))*100)/(CAST((SELECT COUNT(C.IdCliente) 
FROM Cliente C) AS decimal(10,2))) AS DECIMAL(10,2))) AS 'Porcentagem de Clientes'
FROM Produto as P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
OUTER APPLY(
SELECT C.IdCliente
FROM Cliente AS C
INNER JOIN Venda AS V ON V.IdCliente = C.IdCliente
INNER JOIN VendaItem AS VI ON VI.IdVenda = V.IdVenda
WHERE  VI.IdProduto=P.IdProduto AND V.DataPagamento IS NOT NULL AND V.DataPagamento < GETDATE()
GROUP BY C.IdCliente
) AS OA
GROUP BY P.NomeProduto, M.NomeMarca
ORDER BY 'Porcentagem de Clientes' DESC
---------------------------------------------------------------------------------------




