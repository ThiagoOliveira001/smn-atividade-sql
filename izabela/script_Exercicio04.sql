/*
	Listar todos os produtos
	listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos
*/

SELECT NomeCliente, Sexo, Ativo
FROM Cliente
WHERE DATEPART(mm, DataNascimento) = 04
AND Ativo = 1