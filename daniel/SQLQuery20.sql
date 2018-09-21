SELECT c.NomeCliente,
	   c.Sexo,
	   c.Ativo
FROM Cliente AS c
	LEFT JOIN Venda AS v ON v.IdCliente = c.IdCliente
WHERE v.IdCliente IS NULL
ORDER BY c.NomeCliente;