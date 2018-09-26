/*
	Listar Todos os clientes ativos
	listar o nome, sexo e data de nascimento de todos os clientes
*/

SELECT	cl.NomeCliente,
		cl.Sexo,
		cl.DataNascimento
	FROM Cliente cl
	WHERE Ativo = 1