/*
	Listar todos os produtos do tipo "Chocolate"
	listar o nome, marca e quantidade em estoque de todos os produtos do tipo chocolate
*/

select NomeProduto, NomeMarca, QuantidadeEstoque
from Produto as p
inner join Marca as m 
on p.IdMarca = m.IdMarca
where IdTipoProduto = 5
