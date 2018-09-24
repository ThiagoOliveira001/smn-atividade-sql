/*
	Listar Todos os clientes que n�o compraram
	listar o nome, sexo e status de todos os clientes que n�o compraram
*/

SELECT NomeCliente, Sexo, Ativo
FROM Cliente AS c
LEFT JOIN Venda AS v
  ON c.IdCliente = v.IdCliente
WHERE v.IdCliente IS NULL
