--Script doceria
create database candy_shop
use candy_shop

 create table produto
	(id_produto integer primary key identity (1,1),
	nome_produto varchar (50) not null,
	marca_produto varchar (50) not null,
	tipo_produto varchar (50) not null
	)

create table cliente 
	(id_cliente integer primary key identity (1,1),
	cpf bigint not null unique ,
	nome_pessoa varchar (50) not null
	)
	

create table estoque 
	(id_estoque integer primary key identity (1,1),
	quant integer not null,
	valor_compra numeric (10,2) not null,
	data_compra date not null,
	fk_id_produto integer not null
	constraint fk_id_produto foreign key (fk_id_produto)
	references produto (id_produto)	
	)

create table compra 
	(id_compra integer primary key identity,
	id_cliente integer not null
	constraint fk_id_pessoa foreign key (id_cliente)
	references cliente (id_cliente),
	id_produto integer not null
	constraint fk_id_produto_compra foreign key (id_produto)
	references produto (id_produto),
	quantidade integer not null,
	valor_venda numeric (10,2) not null,
	data_da_compra date not null
	)


create table divida
	(id_divida integer primary key identity,
	id_cliente integer not null,
	constraint fk_id_cliente foreign key (id_cliente)
	references cliente (id_cliente),
	id_compra integer not null
	constraint fk_id_compra foreign key 
	references compra (id_compra)

)
