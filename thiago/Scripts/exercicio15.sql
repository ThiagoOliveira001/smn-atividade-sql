USE LojaDoces;
GO
SELECT NomeCliente,
	   Sexo,
	   DataNascimento
FROM Cliente
WHERE Ativo = 1;