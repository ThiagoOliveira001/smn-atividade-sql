/*
QUERY 13 - Listar os 15 maiores compradores
AUTOR: MARIA ANDRESSA DE PAULA SILVA
DATA: 20/09/2018
*/

--Listar o nome, sexo, data de nascimento e quantidade comprada(somente paga)
SELECT top 15 C.NomeCliente, C.Sexo, C.DataNascimento, SUM(VI.Quantidade) as Quantidade
FROM Cliente AS C
INNER JOIN Venda AS V ON V.IdCliente=C.IdCliente
INNER JOIN VendaItem AS VI ON VI.IdVenda =V.IdVenda
WHERE V.DataPagamento IS NOT NULL AND V.DataPagamento< GETDATE()
GROUP BY V.IdCliente, C.NomeCliente, C.Sexo, C.DataNascimento
ORDER BY Quantidade DESC
---------------------------------------------------------------------------------------

