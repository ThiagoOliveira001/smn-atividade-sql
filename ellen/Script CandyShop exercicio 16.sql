-- 16 Listar todos os produtos que não foram vendidos listar o nome, tipo, 
-- marca e valor de venda de todos os produtos que não foram vendidos

select p.nomeproduto, tp.nometipoproduto, m.nomemarca, p.valorvenda from Produto  p


inner join Marca m
on p.IdMarca = m.idmarca

inner join TipoProduto tp
on p.IdTipoProduto = tp.IdTipoProduto 

left join vendaitem vi
on vi.IdProduto = p.IdProduto

where vi.idproduto is null