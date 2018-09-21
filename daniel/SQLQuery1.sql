select Produto.NomeProduto,m.NomeMarca,Produto.QuantidadeEstoque
from Produto as produto
		inner join Marca as m on m.IdMarca=produto.IdMarca
		inner join TipoProduto as t on t.IdTipoProduto = t.IdTipoProduto
where NomeTipoProduto like 'Chocolate'