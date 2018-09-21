-- 10 listar o nome do produto, marca, valor de venda, valor de compra, 
-- nome do ultimo comprador e data da ultima compra

select  c.NomeCliente, v.DataVenda as 'DtUltimaVenda',  p.nomeproduto, m.NomeMarca, 
p.ValorVenda, p.ValorCompra 
from VendaItem vi

inner join Produto p
	on vi.IdProduto =p.IdProduto 
inner join Venda v  
	on vi.IdVenda = v.IdVenda 
inner join Cliente c
	on v.IdCliente = c.IdCliente  
inner join Marca m
	on m.IdMarca = p.IdMarca 
 group by  p.NomeProduto, m.NomeMarca, 
 p.ValorVenda, p.ValorCompra, c.NomeCliente, v.DataVenda 

 select * from Venda 
 select nomecliente from Cliente 
 where IdCliente = 579





