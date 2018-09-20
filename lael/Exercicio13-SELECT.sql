--Exercicio 12 - listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)

SELECT * FROM [Cliente] WHERE NomeCliente =  'Andreia Delfino'

SELECT  * FROM Venda where IdCliente = 431

SELECT * FROM VendaItem WHERE IdVendaItem IN (331
,544
,968
,1103
,1246
,1447)

SELECT * FROM Venda WHERE IdVenda = 1120

SELECT TOP(15) C.NomeCliente, C.Sexo, C.DataNascimento, SUM(VI.Quantidade) AS 'Quantidade Comprada'
	FROM Cliente AS C
	INNER JOIN VendaItem AS VI
		ON VI.IdVenda = C.IdCliente 
	INNER JOIN Venda AS V
		ON V.IdVenda = C.IdCliente
WHERE V.DataPagamento IS NOT NULL
GROUP BY C.NomeCliente, C.Sexo, C.DataNascimento 
ORDER BY C.NomeCliente