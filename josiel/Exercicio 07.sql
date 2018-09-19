SELECT NomeCliente, Sexo, Ativo
	FROM Cliente AS C
	LEFT JOIN Venda AS V
	ON C.idCliente = V.idCliente
	WHERE V.IdCliente IS NULL
	ORDER BY c.NomeCliente