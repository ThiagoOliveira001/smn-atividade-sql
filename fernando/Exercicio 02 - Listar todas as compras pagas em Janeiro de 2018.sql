--Listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018


SELECT
	P.NomeProduto,
	M.NomeMarca,
	T.NomeTipoProduto,
	C.NomeCliente,
	V.DataVenda,
	V.DataPagamento,
	M.NomeMarca
FROM Produto AS P INNER JOIN Marca AS M ON
	P.IdMarca = M.IdMarca
INNER JOIN TipoProduto AS T ON
	P.IdTipoProduto = T.IdTipoProduto
INNER JOIN VendaItem AS VI ON
	P.IdProduto = VI.IdProduto
INNER JOIN Venda AS V ON
	VI.IdVenda = V.IdVenda
INNER JOIN Cliente AS C ON
	V.IdCliente = C.IdCliente
WHERE YEAR(V.DataPagamento)=2018 AND MONTH(V.DataPagamento)=1 


--OU 
--WHERE V.DataPagamento > '12-31-2017' AND V.DataPagamento < '02-01-2018'



	

