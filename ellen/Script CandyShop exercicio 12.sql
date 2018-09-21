-- 12 listar o nome, marca, quantidade vendida e valor do lucro obtido 
--((valor venda - valor compra) * quantidade vendida) dos 10 produtos mais lucrativos (Somente produtos pagos)

select top(10) p.NomeProduto, m.NomeMarca, sum (vi.Quantidade) as 'Quantidade', 
(sum ((p.ValorVenda - p.ValorCompra)* vi.Quantidade))as 'Lucro'
from vendaitem vi

 inner join produto p 
  on p.idproduto = vi.idproduto

 inner join marca m
  on m.IdMarca = p.IdMarca 

inner join Venda v
	on v.IdVenda = vi.IdVenda 

 where v.DataPagamento  is not null
 group by p.nomeproduto, m.nomemarca



