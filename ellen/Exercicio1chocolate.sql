--listar o nome, marca e quantidade em estoque de todos os produtos 
--do tipo chocolate

select * from Marca 
select * from Produto  
select * from Cliente 
select * from Venda 
select * from TipoProduto 

select Produto.NomeProduto as Produto, Marca.NomeMarca as Marca, 
Produto.QuantidadeEstoque from Produto 
inner join Marca 
on Produto.IdMarca  = marca.IdMarca 
where Produto.IdTipoProduto = 5