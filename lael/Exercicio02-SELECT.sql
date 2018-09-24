-- EX02 -listar o nome do produto, marca, tipo, nome do cliente, 
--data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018

SELECT P.NomeProduto, M.NomeMarca, TP.NomeTipoProduto,
	 C.NomeCliente, V.DataVenda, V.DataPagamento 
	FROM VendaItem AS VI
	INNER JOIN Venda AS V
		ON V.idVenda = VI.idVenda
	INNER JOIN Produto AS P
		ON VI.IdProduto = P.IdProduto
	INNER JOIN Marca AS M
		ON P.IdMarca = M.IdMarca
	INNER JOIN TipoProduto AS TP
		ON P.IdTipoProduto = TP.IdTipoProduto
	INNER JOIN Cliente AS C
		ON V.IdCliente = C.IdCliente

WHERE DataPagamento BETWEEN '2018-01-01' AND '2018-01-31'
