/*
QUERY 22 - Listar os top 10 clientes que pagam mais rapido
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 21/09/2018
*/

--Listar o nome do cliente, sexo, e media de tempo (minutos, horas ou dias) que ele demora para pagar

SELECT C.NomeCliente, C.Sexo, ISNULL (AVG(DATEDIFF(MINUTE,DataVenda,DataPagamento)),0) as 'Média de Pagamento % (Minutos)'
FROM Cliente AS C
INNER JOIN Venda AS V ON V.IdCliente = C.IdCliente
GROUP BY C.NomeCliente, C.Sexo
ORDER BY 'Média de Pagamento % (Minutos)' 
---------------------------------------------------------------------------------------





