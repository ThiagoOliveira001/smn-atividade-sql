---05 Listar o nome do cliente e quantidade de produtos diferentes 
-- comprados em 2018
 

select NomeCliente, count(distinct IdProduto) as 'Produtos Distintos'  
from Cliente
	inner join Venda
	on Cliente.IdCliente = Venda.IdCliente
	inner join VendaItem
	on Venda.IdVenda = VendaItem.IdVenda
	where year(DataVenda)  = 2018
	group by NomeCliente

