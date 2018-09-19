use LojaDoces
go

select NomeCliente as Cliente,
		Sexo,
		Ativo as Status
	from Cliente
	where MONTH(DataNascimento) = 04