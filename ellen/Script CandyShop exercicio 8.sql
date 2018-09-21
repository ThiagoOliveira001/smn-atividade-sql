--08  Listar os top 10 inadimplentes. Listar o nome do cliente, sexo, quantidade de itens n�o pagos e 
--data da primeira compra n�o paga

--select * from venda

select top 10 c.nomecliente as cliente, c.sexo, v.DataVenda,  sum (vi.quantidade) as 'Qtd', v.DataPagamento from Venda v 

inner join Cliente c
	on v.IdCliente = c.IdCliente
inner join VendaItem vi
	on vi.idvenda = v.idvenda
 
	where DataPagamento is null
	group by c.NomeCliente, c.sexo,v.DataPagamento, v.DataVenda  



