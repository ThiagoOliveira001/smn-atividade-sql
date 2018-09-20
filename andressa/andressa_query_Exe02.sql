/*
QUERY 02 - Listar todas as compras pagas em Janeiro de 2018
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento 
--de todos os produtos pagos em janeiro de 2018
SELECT P.NomeProduto, M.NomeMarca, TP.NomeTipoProduto, C.NomeCliente, V.DataVenda, V.DataPagamento
FROM VendaItem AS VI
INNER JOIN Produto as P ON P.IdProduto=VI.IdProduto
INNER JOIN TipoProduto AS TP ON TP.IdTipoProduto=P.IdTipoProduto
INNER JOIN Marca AS M ON M.IdMarca=P.IdMarca
INNER JOIN Venda AS V ON V.IdVenda=VI.IdVenda
INNER JOIN Cliente AS C ON C.IdCliente=V.IdCliente
WHERE YEAR(V.DataPagamento)=2018 AND MONTH(V.DataPagamento)=01
---------------------------------------------------------------------------------------