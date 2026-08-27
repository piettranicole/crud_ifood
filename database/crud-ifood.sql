create database crud_ifood;
use crud_ifood;

create table clientes(
    id int auto_increment primary key,
    nome varchar(100) not null,
    email varchar(100) not null,
    telefone varchar(20) not null,
    endereço varchar(200) not null,
);

create table restaurantes(
    id int auto_increment primary key,
    nome varchar(100) not null,
    endereco varchar(200) not null,
    telefone varchar(20) not null,
    categoria varchar(50) not null
);

create table pedidos(
    id int auto_increment primary key,
    cliente_id int,
    restaurante_id int,
    valor int not null,
    data_pedido datetime not null,
    status varchar(20) not null,
    foreign key (cliente_id) references clientes(id),
    foreign key (restaurante_id) references restaurantes(id)
);