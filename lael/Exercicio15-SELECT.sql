--listar o nome, sexo e data de nascimento de todos os clientes -- cliente ativos

SELECT C.NomeCliente, C.Sexo, C.DataNascimento, C.Ativo
FROM Cliente as C
	WHERE C.Ativo = 1