select NomeProduto, NomeMarca, QuantidadeEstoque
from Produto as p
inner join Marca as m 
on p.IdMarca = m.IdMarca
where IdTipoProduto = 5
