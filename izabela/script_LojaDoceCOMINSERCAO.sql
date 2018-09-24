create database lojaDoce

create table tb_Categoria(
	id_categoria int primary key identity,
	nome varchar (100) not null
)

create table tb_Marca(
	id_marca int primary key identity,
	nome_marca varchar(100) not null
)

create table tb_Produto(
	id_produto int primary key identity,
	desc_produto varchar(100) not null,
	quantidade int not null,
	pr_unitario money not null,
	id_categoria int not null,
	id_marca int not null,
	constraint fk_id_marca foreign key(id_marca)
	references tb_Marca,
	constraint fk_id_categoria foreign key(id_categoria)
	references tb_Categoria 
)


create table tb_Compra(
	id_compra int primary key identity,
	data_compra datetime not null, 
)

create table tb_Mercadoria(
	id_mercadoria int primary key identity,
	quantidade int not null,
	id_produto int not null,
	id_compra int not null
	constraint fk_id_produto foreign key(id_produto)
	references tb_Produto,	
	constraint fk_id_compra foreign key(id_compra)
	references tb_Compra	
)

create table tb_TipoPagamento(
	id_tipoPagamento int primary key identity,
	nome varchar(100) not null,
)

create table tb_Cliente(
	id_cliente int primary key identity,
	nome varchar(100) not null, 
	cpf numeric(11) not null,
	cargo varchar (100) not null
)
alter table tb_Cliente add telefone bigint not null

create table tb_Venda(
	id_venda int primary key identity,
	data_venda datetime not null,
	data_pagamento datetime not null,
	id_cliente int not null,
	id_tipo_pagamento int not null
	constraint fk_id_tipo_pagamento foreign key(id_tipo_pagamento)
	references tb_TipoPagamento,
	constraint fk_id_cliente foreign key(id_cliente)
	references tb_Cliente
)

create table tb_Item(
	id_item int primary key identity,
	quantidade int not null,
	id_venda int not null,
	id_produto int not null
	constraint fk_item_produto foreign key(id_produto)
	references tb_Produto,
	constraint fk_id_venda foreign key(id_venda)
	references tb_Venda
)


-- inserir dados nas tabelas
insert into tb_Categoria
values  ('Doces'),
		('Salgados'),
		('Bebidas')

insert into tb_Marca
values  ('Nestle'),
		('Garoto'),
		('Lacta'),
		('Coca-Cola'),
		('Antartica'),
		('Itubaina'),
		('Salgado Assado'),
		('Salgado Frito'),
		('Elma Chips')

insert into tb_Produto
values  ('Chocolate kit-kat Preto', 10, 3.00, 1,1),
		('Chocolate kit-kat Branco', 10, 3.00, 1,1),
		('Chocolate Diamante Negro', 10, 2.50,1,1),
		('Chocolate Laka', 10, 2.50, 1,1),
		('Chocolate Ouro Branco', 10, 1.50,1,3),
		('Chocolate Sonho de Valsa', 10, 1.50, 1,3),
		('Chocolate Talento Avelã', 10, 4.50,1,2),
		('Chocolate Batom Branco', 10, 1.50, 1,2),
		('Chocolate Batom Preto', 10, 1.50, 1,2),
		('Refrigerante Fanta Laranja Lata 350ml', 10, 3.50,3,4),
		('Refrigerante Fanta Uva Lata 350ml', 10, 3.50,3,4),
		('Refrigerante Sprit Lata 350ml', 10, 3.50,3,4),
		('Refrigerante Coca-Cola Lata 350ml', 10, 3.50,3,4),
		('Refrigerante Garaná Antartica Lata 350ml', 10, 3.50,3,5),
		('Refrigerante Citrus Antartica 350ml', 10, 3.50, 3,5),
		('Refrigerante Sukita Lata 350ml', 10, 3.50, 3,5),
		('Água H2O Limão 500ml', 10, 3.50, 3,5),
		('Refrigerante Itubaina 350ml', 10, 3.00, 3,6),
		('Esfirra de carne', 3, 3.00, 2,7),
		('Enroladinho de Presunto e Mussarela Assado', 3, 3.00, 2,7),
		('Pão de Queijo', 3, 2.50, 2,7),
		('Coxinha Frango com Catupiry', 3, 2.50,2,8),
		('Enroladinho de Presunto e Mussarela Frito', 3, 2.50,2,8),
		('Salgadinho Fandangos Presunto 150g', 3, 3.00,2,9),
		('Salgadinho Doritos 150g', 3, 3.00,2,9),
		('Salgadinho Cheetos Assado Requeijão 150g', 3, 2.50,2,9),
		('Salgadinho Pingo D Ouro Picanha Grelhada 90g', 3, 2.50,2,9)

insert into tb_Compra
values('18/09/2018')

insert into tb_Mercadoria
values(5,2,1)

insert into tb_TipoPagamento
values  ('Dinheiro'),
		('PicPay'),
		('Folha de Pagamento')

insert into tb_Cliente
values  ('Izabela', 45612378954, 'Analista',953314594461),
		('Josiel', 45678912435, 'Desenvolvedor Back-End',46894615364),
		('Henrique', 78954761423, 'Desenvolvedor Mobile',46613542132),
		('Andressa', 96325841354, 'Desenvolvedor Front-End',7813451491)

insert into tb_Venda
values  ('18/09/2018', '18/09/2018', 1,1),
		('18/09/2018', '18/09/2018', 2,2), 
		('18/09/2018', '18/09/2018', 3,3) 

insert into tb_Item
values  (1,1,3),
		(1,2,10),
		(1,3,22),
		(1,3,16)