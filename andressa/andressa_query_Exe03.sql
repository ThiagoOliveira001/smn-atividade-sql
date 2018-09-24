/*
QUERY 03 - Listar todos os clientes que fazem aniversario em Abril
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 19/09/2018
*/

--Listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril
SELECT C.NomeCliente, C.Sexo, C.Ativo, C.DataNascimento
FROM Cliente as C
WHERE C.Ativo =1 AND MONTH(C.DataNascimento)=04
---------------------------------------------------------------------------------------