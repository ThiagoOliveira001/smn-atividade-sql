---06 Listar produtos e quantidade vendidos em 2018

select p.NomeProduto, sum(vi.Quantidade) as 'Quantidade'
from VendaItem vi
	inner join Produto p
	on vi.IdProduto =p.IdProduto 

	inner join Venda v
	on vi.IdVenda =v.IdVenda
	 
	where year(DataVenda )= 2018
	group by p.NomeProduto 