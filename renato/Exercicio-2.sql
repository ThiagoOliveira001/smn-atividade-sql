-- 02 - Listar todas as compras pagas em Janeiro de 2018
-- listar o nome do produto, marca, tipo, nome do cliente, 
-- data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018

-- Produto.NomeProduto
-- Marca.NomeMarca
-- TipoProduto.NomeTipoProduto
-- Cliente.NomeCliente
-- Venda.DataVenda
-- Venda.DataPagamento
-- WHERE YEAR(Venda.DataPagamento) = 2018 AND MONTH(Venda.DataPagamento) = 1

USE LojaDoces

SELECT	p.NomeProduto,
		m.NomeMarca,
		t.NomeTipoProduto,
		c.NomeCliente,
		v.DataVenda,
		v.DataPagamento
		FROM Venda v
		INNER JOIN VendaItem vi
			ON v.IdVenda = vi.IdVenda
		INNER JOIN Cliente c
			ON v.IdCliente = c.IdCliente
		INNER JOIN Produto p
			ON vi.IdProduto = p.IdProduto
		INNER JOIN TipoProduto t
			ON p.IdTipoProduto = t.IdTipoProduto
		INNER JOIN Marca m
			ON p.IdMarca = m.IdMarca
		WHERE YEAR(v.DataPagamento) = 2018 
			AND MONTH(v.DataPagamento) = 1

