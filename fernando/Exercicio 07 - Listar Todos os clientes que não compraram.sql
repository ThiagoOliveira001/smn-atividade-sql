listar o nome, sexo e status de todos os clientes que não compraram

SELECT
	C.NomeCliente,
	C.Sexo,
	C.Ativo
FROM
	Cliente AS C LEFT JOIN Venda AS V ON
		C.IdCliente = V.IdCliente
WHERE V.IdCliente IS NULL
