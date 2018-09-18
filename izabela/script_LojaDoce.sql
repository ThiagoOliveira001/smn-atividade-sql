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
	data_compra date not null, 
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
	data_venda date not null,
	data_pagamento date not null,
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

