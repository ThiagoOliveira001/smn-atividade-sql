/*
QUERY 15 - Listar Todos os clientes ativos
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome, sexo e data de nascimento de todos os clientes
SELECT NomeCliente, Sexo, DataNascimento
FROM Cliente
WHERE Ativo=1
---------------------------------------------------------------------------------------

