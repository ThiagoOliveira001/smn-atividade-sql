USE LojaDoces;
GO
SELECT NomeProduto
FROM Produto
WHERE NomeProduto LIKE '%cola%' collate Latin1_General_CS_AS
-- Mudando a collate pois no exerc�cio � pedido a palavra "cola", e s� com like ele tambem retornaria "Cola" 