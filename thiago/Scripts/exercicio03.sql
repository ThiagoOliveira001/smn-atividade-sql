USE LojaDoces;
GO
SELECT NomeCliente,Sexo,Ativo
FROM Cliente
WHERE MONTH(DataNascimento) = 4;