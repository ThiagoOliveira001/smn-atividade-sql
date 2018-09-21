/*
	Listar todas as compras pagas em Janeiro de 2018
	listar o nome do produto, marca, tipo, nome do cliente, data da compra e data de pagamento de todos os produtos pagos em janeiro de 2018
*/

select p.NomeProduto, m.NomeMarca, tp.NomeTipoProduto, c.NomeCliente, v.DataVenda, v.DataPagamento
	from VendaItem as vi
		inner join Produto as p
			on vi.IdProduto = p.IdProduto
		inner join Marca as m 
			on p.IdMarca = m.IdMarca
		inner join TipoProduto as tp
			on p.IdTipoProduto = tp.IdTipoProduto
		inner join Venda as v
			on  vi.IdVenda = v.IdVenda
		inner join Cliente as c
			on  v.IdCliente = c.IdCliente
	where v.DataPagamento BETWEEN '01-01-2018 00:00:00' and '01-31-2018 23:59:59'
	order by v.DataPagamento
