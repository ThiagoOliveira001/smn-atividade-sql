use LojaDoces
go

select NomeCliente,
		Sexo,
		DataNascimento
	from Cliente
	where Ativo = 1