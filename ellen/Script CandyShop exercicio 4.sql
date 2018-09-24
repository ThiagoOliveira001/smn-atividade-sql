------04 listar o nome do produto, marca, valor de venda, valor de compra e quantidade de todos os produtos

select p.nomeproduto as Produto, m.nomemarca as Marca, 
p.valorvenda as Preço, p.valorcompra as ValorCompra, p.QuantidadeEstoque  as QtdEstoque 
from produto p

inner join Marca m
on p.IdMarca = m.IdMarca 