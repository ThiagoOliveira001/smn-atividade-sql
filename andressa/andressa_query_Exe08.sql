/*
QUERY 08 - Listar os top 10 inadimplentes
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome do cliente, sexo, quantidade de itens não pagos e data da primeira compra não paga
SELECT top 10 C.NomeCliente, C.Sexo, SUM(VI.Quantidade) as Quantidade,V.DataVenda, V.DataPagamento
FROM Cliente as C
INNER JOIN Venda AS V ON V.IdCliente = C.IdCliente
INNER JOIN VendaItem AS VI ON VI.IdVenda=V.IdVenda
WHERE V.DataPagamento is null
GROUP BY C.NomeCliente, C.Sexo, V.DataVenda, V.DataPagamento
---------------------------------------------------------------------------------------