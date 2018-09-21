select p.nomeproduto,m.NomeMarca,t.nometipoproduto,c.nomecliente,v.datavenda,v.datapagamento,vi.idproduto
from Produto as p
	inner join Marca as m on m.IdMarca=p.IdMarca
	inner join TipoProduto as t on t.IdTipoProduto = p.IdTipoProduto
	inner join VendaItem as vi on vi.IdProduto = p.IdProduto
	inner join Venda as v on v.IdVenda=vi.idvenda
	inner join Cliente as c on c.IdCliente=v.idcliente

where YEAR(v.DataPagamento) = 2018 and MONTH(v.DataPagamento)=1
