/*
QUERY 07 - Listar Todos os clientes que não compraram
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--listar o nome, sexo e status de todos os clientes que não compraram
SELECT C.NomeCliente, C.Sexo, C.Ativo
FROM Cliente as C
LEFT JOIN Venda AS V ON V.IdCliente = C.IdCliente
WHERE V.IdCliente IS NULL
---------------------------------------------------------------------------------------