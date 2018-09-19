use LojaDoces
go

select c.NomeCliente as Cliente,
		Sexo,
		Ativo as Status
	from Cliente as c
	left join Venda as v on c.IdCliente = v.IdCliente
	where v.IdVenda is null
	order by c.NomeCliente