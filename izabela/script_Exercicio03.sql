select NomeCliente, Sexo, Ativo
from Cliente
where datepart (mm,  DataNascimento) = 04 and Ativo = 1