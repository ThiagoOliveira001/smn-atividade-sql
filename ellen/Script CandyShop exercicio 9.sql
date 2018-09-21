-- 09 listar o nome da marca, o valor total de lucro obtido 
-- e a quantidade total de produtos, ordenar por lucro.

select   m.NomeMarca as Marca , (sum ((p.ValorVenda)-(p.ValorCompra)) * sum (vi.quantidade))  as 'Lucro', 

sum (vi.quantidade) as 'Quantidade' from produto p

	inner join Marca m
	 on p.IdMarca = m.IdMarca 

	inner join vendaitem vi
	on vi.IdProduto =p.IdProduto 
	
	group by m.NomeMarca
	order by Lucro desc

