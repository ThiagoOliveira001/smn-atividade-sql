select p.nomeproduto,m.nomemarca,p.valorcompra,p.valorvenda,p.quantidadeestoque
from Produto as p
	inner join Marca as m on m.IdMarca=p.idmarca
