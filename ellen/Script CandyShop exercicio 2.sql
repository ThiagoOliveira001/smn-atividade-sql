-- 02 listar o nome do produto, marca, tipo, nome do cliente, data da compra 
-- e data de pagamento de todos os produtos pagos em janeiro de 2018

select P.NomeProduto as Produto, M.NomeMarca as Marca, 
tp.NomeTipoProduto as TipoProduto, C.NomeCliente as Cliente, 
v.DataVenda as DtVenda, v.DataPagamento as DtPagamento  from VendaItem  vi

inner join Venda v
	on v.IdVenda = vi.IdVenda 

inner join produto p
	on vi.IdProduto = p.IdProduto 
	
inner join Marca m
	on p.IdMarca   = m.IdMarca 

inner join TipoProduto tp
	on tp.IdTipoProduto  = p.IdTipoProduto 

inner join Cliente c
	on c.IdCliente = v.IdCliente 

 WHERE year(v.DataPagamento)= 2018 and MONTH(v.DataPagamento) = 01