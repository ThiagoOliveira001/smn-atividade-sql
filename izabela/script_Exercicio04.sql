SELECT NomeCliente, Sexo, Ativo
FROM Cliente
WHERE DATEPART(mm, DataNascimento) = 04
AND Ativo = 1