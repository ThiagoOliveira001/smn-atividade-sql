--listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril
--MONTH Função mês YEAR ano para comparar como inteiro

SELECT c.NomeCliente, c.Sexo, c.Ativo FROM Cliente AS c
	WHERE MONTH(DataNascimento) = 04 AND Ativo = 1