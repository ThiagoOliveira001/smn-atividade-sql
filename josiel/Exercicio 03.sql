SELECT NomeCliente, Sexo, Ativo
	FROM Cliente
	WHERE DATEPART(MM, DataNascimento) = 04 AND Ativo = 1