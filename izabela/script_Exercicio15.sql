/*
	Listar Todos os clientes ativos
	listar o nome, sexo e data de nascimento de todos os clientes
*/

SELECT NomeCliente, Sexo, DataNascimento
FROM Cliente
WHERE Ativo = 1