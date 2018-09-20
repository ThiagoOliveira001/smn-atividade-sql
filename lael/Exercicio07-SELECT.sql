--listar o nome, sexo e status de todos os clientes que não compraram

SELECT * FROM Cliente

SELECT * FROM Venda

SELECT c.NomeCliente, c.Sexo, v.idVenda FROM Cliente AS c
	LEFT JOIN Venda AS v
		ON c.IdCliente = v.IdCliente
	WHERE v.IdVenda IS NULL