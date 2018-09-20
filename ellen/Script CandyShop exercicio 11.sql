-- 11 Listar o nome da marca, e quantidade de produtos em estoque

select m.NomeMarca as Marca, count (p.QuantidadeEstoque) as 'Qtd em estoque'
from produto p

inner join Marca m
on p.IdMarca = m.IdMarca  
group by m.nomemarca
