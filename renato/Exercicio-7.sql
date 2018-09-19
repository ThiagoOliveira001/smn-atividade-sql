-- 07 - Listar Todos os clientes que não compraram
-- listar o nome, sexo e status de todos os clientes que não compraram

-- left join venda
-- where v.idcliente is null

USE LojaDoces

SELECT	c.NomeCliente,
		c.Sexo,
		c.Ativo AS Status
		FROM Cliente c
		LEFT JOIN Venda v
			ON c.IdCliente = v.IdCliente
		WHERE v.IdCliente IS NULL

