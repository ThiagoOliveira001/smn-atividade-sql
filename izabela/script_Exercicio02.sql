/*
	Listar todas as compras pagas em Janeiro de 2018
	listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018
*/

SELECT	pr.NomeProduto, 
		ma.NomeMarca, 
		tp.NomeTipoProduto, 
		cl.NomeCliente, 
		ve.DataVenda, 
		ve.DataPagamento
	FROM VendaItem vi
		INNER JOIN Produto pr
			ON vi.IdProduto = pr.IdProduto
		INNER JOIN Marca ma
			ON pr.IdMarca = ma.IdMarca
		INNER JOIN TipoProduto as tp
			ON pr.IdTipoProduto = tp.IdTipoProduto
		INNER JOIN Venda ve
			ON  vi.IdVenda = ve.IdVenda
		INNER JOIN Cliente cl
			ON  ve.IdCliente = cl.IdCliente
	WHERE ve.DataPagamento BETWEEN '01-01-2018 00:00:00' AND '01-31-2018 23:59:59'
	ORDER BY ve.DataPagamento
