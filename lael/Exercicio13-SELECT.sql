--Exercicio 12 - listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)


SELECT TOP(15) C.NomeCliente, C.Sexo, C.DataNascimento, SUM(VI.Quantidade) AS 'Quantidade Comprada'
	FROM Cliente AS C
	INNER JOIN VendaItem AS VI
		ON VI.IdVenda = C.IdCliente 
	INNER JOIN Venda AS V
		ON V.IdVenda = C.IdCliente
WHERE V.DataPagamento <GETDATE()
GROUP BY C.NomeCliente, C.Sexo, C.DataNascimento 
ORDER BY C.NomeCliente