--17 listar o nome, marca, valor de compra, valor de venda e quantidade em estoque dos 10 produtos mais vendidos

select  p.NomeProduto, m.nomemarca, p.valorcompra, p.valorvenda, p.QuantidadeEstoque, sum(vi.quantidade) as Qtde 
from Produto p

 inner join marca m
  on m.IdMarca =p.IdMarca 

 left join vendaitem vi 
  on vi.IdProduto = p.IdProduto 

  group by p.NomeProduto, m.nomemarca, p.valorcompra, p.valorvenda, p.QuantidadeEstoque
  order by Qtde desc

 