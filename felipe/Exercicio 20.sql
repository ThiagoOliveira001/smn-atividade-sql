use LojaDoces
go

select co.NomeCliente,
		co.Sexo,
		(CASE WHEN prod.favoritoNome IS null then ' ' else prod.favoritoNome end) as Favorito,
		FLOOR(DATEDIFF(day,co.dataNascimento,GETDATE())/365.25) as idade
		from Cliente as co
	outer apply(
		select top 1 
			COUNT(vi.Quantidade) as favorito,
			p.NomeProduto as favoritoNome	
		from VendaItem as vi
		inner join Venda as v on vi.IdVenda = v.IdVenda
		inner join Produto as p on p.IdProduto = vi.IdProduto
		inner join Cliente as c on c.IdCliente = v.IdCliente
		where co.IdCliente = v.IdCliente and p.IdProduto = vi.IdProduto
		group by p.NomeProduto,vi.Quantidade
		order by favorito desc
	)Prod
	order by co.NomeCliente

