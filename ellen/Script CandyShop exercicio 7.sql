--07 Listar o nome, sexo e status de todos os clientes 
--que não compraram

select c.NomeCliente, c.sexo, c.ativo, v.DataVenda from Cliente c

	left join Venda v
	on c.IdCliente = v.IdCliente 
	where DataVenda is null
