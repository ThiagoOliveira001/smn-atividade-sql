/*
QUERY 10 - Listar todos os produtos e data da ultima compra
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do produto, marca, valor de venda, valor de compra, 
--nome do ultimo comprador e data da ultima compra
(SELECT P.NomeProduto, M.NomeMarca, P.ValorVenda, P.ValorCompra, C.NomeCliente, V.DataVenda
FROM Produto AS P
INNER JOIN Marca AS M ON M.IdMarca = P.IdMarca
INNER JOIN VendaItem AS VI ON VI.IdProduto=P.IdProduto
INNER JOIN Venda AS V ON V.IdVenda = VI.IdVenda
INNER JOIN Cliente AS C ON C.IdCliente = V.IdCliente) AS Resultado
--ORDER BY C.NomeCliente


SELECT Resultado.Cliente, SUM(Resultado.Total) AS Total
FROM
(SELECT CL.Nome_Cliente AS Cliente, PR.Preco_Produto * CO.Quantidade AS Total
FROM Clientes AS CL
INNER JOIN Compras AS CO
ON CL.ID_Cliente = CO.ID_Cliente
INNER JOIN Produtos AS PR
ON CO.ID_Produto = PR.ID_Produto) AS Resultado
GROUP BY Resultado.Cliente
ORDER BY Total

select (select NomeCliente from Cliente where IdCliente=202) as Nomes






select* from Produto
select * from TipoProduto
select* from Marca
select* from Cliente
select* from Venda
order by IdCliente
order by DataPagamento
select* from VendaItem
---------------------------------------------------------------------------------------