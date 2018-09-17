drop database doce
create database doce
use doce
	create table cliente
		(
			id_cliente int primary key identity not null,
			Nome varchar(50)not null,
			CPF bigint not null,
			Rua varchar(100),
			NumCasa int not null,
			Cep bigint not null,
			Bairro varchar(30)not null,
			Municipio varchar(30)not null,
			Estado varchar(2)not null 
		)

	create table telefone
	(
			id int primary key identity not null,
			tel varchar(100)not null,
			id_telefone int constraint fk_tel_cliente foreign key references cliente(id_cliente)not null
	)
	create table item
	(
			id_item int primary key identity not null,
			produto varchar(20)not null,
			id_item_buy int not null,
			id_item_sell int not null
	)
	create table prodt
		(
			idprodt int primary key identity not null,
			lote varchar(70),
			Especificações varchar(75) not null,
			preco decimal(5,2)not null,
			qntd bigint not null,
			id_item_Produto int not null
			
		)


	create table itemcompra
	(
			id_compra int primary key identity not null,
			id_item_compra int  not null,
			id_item_Produto int not null
			

	)
	create table itemvenda
	(	
			id_venda int primary key identity not null,
			id_item_venda int not null,

	)
	create table compra
	(
			id_compra int primary key identity not null,
			id_item_compra varchar(20) not null,
			id_responsavel int not null,
	)

	create table vendas
		(
			id_vendas int primary key identity not null,
			id_item_venda varchar(20) not null,
			id_responsavel int not null,
			id_cliente varchar(20) not null,
			preco_revenda decimal(5,2)not null

		)
	create table responsavel
	(
			id_responsavel int primary key identity not null,
			id_cliente_responsavel int constraint fk_cliente_responsavel foreign key references cliente (id_cliente) not null
	)
	use doce
	go
	alter table item		add constraint fk_item_compra foreign key (id_item_buy) references itemcompra(id_compra)
	alter table item		add constraint fk_item_venda foreign key (id_item_sell) references itemvenda(id_venda)
	alter table itemcompra	add constraint fk_item_compra_compra foreign key (id_item_Produto) references compra(id_compra)
	alter table prodt		add constraint fk_item_produto foreign key (id_item_Produto) references item(id_item)
	alter table itemvenda	add constraint fk_item_venda_venda foreign key (id_item_venda) references vendas(id_vendas)
	alter table compra		add constraint fk_compra_responsavel foreign key (id_responsavel) references responsavel(id_responsavel)
	alter table vendas		add constraint fk_vendas_responsavel foreign key (id_responsavel) references responsavel(id_responsavel)