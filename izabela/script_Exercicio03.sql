/*
	Listar todos os clientes que fazem aniversario em Abril
	listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril
*/

select NomeCliente, Sexo, Ativo
from Cliente
where datepart (mm,  DataNascimento) = 04 and Ativo = 1