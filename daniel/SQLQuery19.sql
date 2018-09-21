select m.nomemarca,(p.valorvenda-p.valorcompra)as 'Lucro',p.QuantidadeEstoque
from Produto as p
	inner join Marca as m on p.IdMarca=m.IdMarca
	order by Lucro