-- 18 Listar o nome da marca e o nome de todos os seus produtos separados por ","

select m.NomeMarca, SUBSTRING (produtos, 1, len(produtos )-1)  from marca m 

cross apply
(select (p.nomeproduto + ', ' ) from  produto p

where m.IdMarca = p.IdMarca
for xml path ('') 
) ap (produtos)


