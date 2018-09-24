use LojaDoces
go

select top 10 c.NomeCliente,
		c.Sexo,
		ISNULL(AVG(DATEDIFF(Day,V.DataPagamento,V.DataVenda)),0) as Dias
	from Cliente as c
	inner join Venda as v on v.IdCliente = c.IdCliente
	group by c.NomeCliente,c.Sexo
	order by Dias



