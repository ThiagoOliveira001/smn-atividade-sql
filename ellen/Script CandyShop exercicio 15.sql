--15 Listar Todos os clientes ativos listar o nome, sexo e data de nascimento de todos os clientes

select nomecliente as Cliente, sexo , datanascimento as DtNasc, ativo as Status from Cliente 
where ativo = 1