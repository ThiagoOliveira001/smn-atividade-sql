-- 03 - Listar todos os clientes que fazem aniversario em Abril
-- listar o nome, sexo e status(ativo) de todos os clientes que fazem aniversario em abril

-- Cliente.NomeCliente
-- Cliente.Sexo
-- Cliente.Ativo
-- WHERE MONTH(Cliente.DataNascimento) = 4


USE LojaDoces

SELECT	c.NomeCliente,
		c.Sexo,
		c.Ativo
		FROM Cliente c
		WHERE MONTH(c.DataNascimento) = 4
