/*
	Listar todos os clientes que fazem aniversario em Abril
	listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril
*/

SELECT	cl.NomeCliente, 
		cl.Sexo,
		cl.Ativo
	FROM Cliente cl
	WHERE DATEPART (mm,  DataNascimento) = 04 AND Ativo = 1