SELECT	FORMAT(v.DataVenda, 'yyyy/MM') AS Mes_Ano,
  SUM(CASE
    WHEN
      v.DataPagamento IS NULL OR v.DataPagamento > GETDATE() THEN 1
    ELSE 0
  END) AS NaoPago,

  SUM(CASE
    WHEN
      v.DataPagamento IS NOT NULL AND v.DataPagamento < GETDATE() THEN 1
    ELSE 0
  END) AS Pago

FROM Venda AS v
INNER JOIN VendaItem AS vi
  ON v.IdVenda = vi.IdVenda
GROUP BY FORMAT(v.DataVenda, 'yyyy/MM')