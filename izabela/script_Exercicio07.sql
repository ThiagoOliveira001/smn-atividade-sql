SELECT NomeCliente, Sexo, Ativo
FROM Cliente AS c
LEFT JOIN Venda AS v
  ON c.IdCliente = v.IdCliente
WHERE v.IdCliente IS NULL
