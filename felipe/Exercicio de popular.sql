use LojaDoces
go

insert into Cliente (NomeCliente,Sexo,DataNascimento,Ativo) values
('Thomas André Almeida','M','19960223',1),
('Daniel Pedro Henrique Kevin Barros','M','19960707',0),
('Antonella Allana Carolina Monteiro','F','19930614',0),
('Alícia Maitê Fernanda Alves','F','19931204',0),
('Emanuelly Clarice Rayssa Viana','F','19991003',0),
('Giovanna Aurora Eduarda Barros','F','19940414',0),
('Thales Iago Cardoso','M','19930512',0),
('Pedro Henrique Giovanni Moreira','M','19871225',0),
('Marcelo Sérgio da Silva','M','19890617',0),
('Yuri Henrique Moraes','M','19970910',1),
('Raul Vicente Manoel Galvão','M','19920119',1),
('Sandra Laís Sales','F','19901010',1),
('Maitê Gabriela Mariane Vieira','F','19950226',1),
('Isabella Maria Porto','F','19930928',1),
('Raquel Emanuelly Mariah Rezende','F','19910308',1),
('Sophia Cláudia Ferreira','F','',0),
('Antônia Benedita Josefa Pires','F','19980612',1),
('Emanuel Iago Araújo','M','19970717',0),
('Elisa Aparecida Lívia Alves','F','19940113',1),
('Rafael Anfonso de Souza','M','19920103',1)
go

insert into Marca(NomeMarca) values
('Bis'),
('CocaCola'),
('Pepsi'),
('Kopenhagen')
go

insert into 2(IdTipoProduto,IdMarca,NomeProduto,ValorCompra,ValorVenda,QuantidadeEstoque) values
--10 produtos
(1,1,'Prestígio',1.00,1.50,20),
(1,1,'Alpino',1.25,2.50,30),
(1,1,'Suflair',0.75,1.40,123),
(1,1,'Classic',1.50,3.00,87),
(1,1,'Galak',0.99,1.45,154),
(1,1,'Lollo',1.09,1.54,90),
(1,1,'Charge',1.23,1.99,65),
(1,1,'Sensação',1.02,1.98,102),
(1,1,'Chokito',0.68,1.20,32),
(1,1,'KitKat',1.30,2.40,49)
go
--20 produtos
insert into Produto(IdTipoProduto,IdMarca,NomeProduto,ValorCompra,ValorVenda,QuantidadeEstoque) values
(1,17,'Serenata de Amor',1.00,1.50,96),
(1,17,'Baton Branco',0.50,1.10,165),
(1,17,'Baton Extramilk',0.70,1.40,153),
(1,17,'Baton ao Leite',0.50,1.15,45),
(1,17,'Baton Duo Branco',0.75,1.50,12),
(1,17,'Opereta',1.50,3.20,52),
(1,17,'Talento Avelãs',2.00,4.10,76),
(1,17,'Cores',1.50,3.00,52),
(1,17,'Cookie Gotas de Chocolate Branco',3.00,5.50,41),
(1,17,'Blend',5.00,10.30,21)
go
--vendas
create procedure vendas_insere as
begin
declare
	@dataPagamento DATETIME,
	@cont int,
	@contItem int,
	@ultimoVenda int,
	@carrinho int,
	@produtos int,
	@clientes int,
	@qtde int,
	@qtdecompra int

	SET @cont=0
	SET @contItem=0

	declare produto CURSOR for 
		select IdProduto from Produto
	declare cliente CURSOR 
		for select IdCliente from Cliente where Ativo = 1

	OPEN produto
		FETCH NEXT FROM produto into @produtos
	OPEN cliente
		FETCH NEXT FROM cliente into @clientes

	while @cont < 50
	begin
		
		SET @dataPagamento  = GETDATE() +(RAND() * (30 - 1) + 1);
		SET @carrinho  =(RAND() * (5 - 1) + 1);

		insert into Venda(idCliente,DataPagamento) values (@clientes,@dataPagamento)

		SET @ultimoVenda =IDENT_CURRENT('Venda')
		
		while @contItem < @carrinho
		begin
			select @qtde = QuantidadeEstoque from Produto where IdProduto = @produtos


			SET @qtdecompra =CEILING((RAND() * ((@qtde/2) - 1) + 1))

			insert into VendaItem(IdProduto,IdVenda,Quantidade)
				values	(@produtos,@ultimoVenda,@qtdecompra)
					
			FETCH NEXT FROM produto into @produtos
			SET @contItem = @contItem + 1;
			
		end

		SET @contItem=0

		print 'Venda Conluida'

		FETCH NEXT FROM cliente into @clientes
		SET @cont = @cont + 1;
	end


	CLOSE produto
	CLOSE cliente
	DEALLOCATE cliente
	DEALLOCATE produto

end

exec vendas_insere

select * from VendaItem inner join Venda on VendaItem.IdVenda = Venda.IdVenda