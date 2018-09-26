/*
	Listar Todos os clientes que não compraram
	listar o nome, sexo e status de todos os clientes que não compraram
*/

SELECT	NomeCliente, Sexo, Ativo
	FROM Cliente c WITH(NOLOCK)
	LEFT JOIN Venda v WITH(NOLOCK) 
	  ON c.IdCliente = v.IdCliente
	WHERE v.IdCliente IS NULL
