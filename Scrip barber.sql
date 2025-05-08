DROP DATABASE IF EXISTS barberia1;
create database BARBERIA1;

USE BARBERIA1;


create table Barberiaxx(
	idbarberia tinyint primary key auto_increment,
    telefono integer,
    direccion varchar(20),
    horarios time
);

create table Trabajador(
	idtrabajador int primary key,
    nombre varchar(20),
    apellido varchar(20),
    telefono integer,
    correo varchar(25) unique,
    horario time,
    idbarberia tinyint
);

create table Cliente(
	idcliente integer primary key,
    nombre varchar(20),
    apellido varchar(20),
    telefono integer,
    correo varchar(25) unique  
);

create table Agendamiento(
	idagendamiento integer primary key auto_increment,
    fechas date,
    horarios time,
    idcliente integer
);

create table Servicios(
	idservicios integer primary key auto_increment,
    valor float,
    cantidad integer
    idcategoria
    
);

create table Productos(
	idproducto integer primary key auto_increment,
	valor float,
    cantidad integer
);

create table Categoria(
	idcategoria integer primary key auto_increment,
    descripcion varchar (255),
    URL varchar (255),
    nombre_c varchar (100)
);

create table Factura(
	idfactura integer primary key auto_increment,
    idservicios integer,
    idproductos integer,
    valortotal float,
    fecha date,
    idcliente integer,
    idtrabajador integer,
    idbarberia tinyint
);

alter table Trabajador
add foreign key (idbarberia) references Barberiaxx(idbarberia);

alter table Agendamiento
add foreign key (idcliente) references Cliente(idcliente);

alter table Factura
add foreign key (idcliente) references Cliente(idcliente);

alter table Factura
add foreign key (idtrabajador) references Trabajador(idtrabajador);

alter table Factura
add foreign key (idbarberia) references Barberiaxx(idbarberia);

alter table Productos
add foreign key (idcategoria) references Categoria(idcategoria);

alter table Servicios
add foreign key (idcategoria) references Categoria(idcategoria);

alter table Productos change column valor price float;
alter table Barberiaxx change column horarios horarioa time;
alter table Barberiaxx add column horarioc time;
alter table Productos change column categoria categoria varchar(20);
alter table Servicios change column categoria categoria varchar(20);
alter table Trabajador drop primary key;

insert into Agendamiento values(3,20250506, 140000 ,423);
insert into Agendamiento values(4,20250506, 160000 ,424);
insert into Agendamiento values(5,20250506, 180000 ,226);

insert into Barberiaxx values(1,3233333,"cra 44 # 22a - 20",060000,200000);
insert into Barberiaxx values(2,3233377,"cra 77 # 32 - 15",060000,220000);
insert into Barberiaxx values(3,3233335,"cra 12 # 66a - 10",080000,200000);

Insert into Cliente values(423, "MI", "LO",312030602,"MILO14nombreidcliente3@GMAIL.COM");
Insert into Cliente values(424, "LUIS", "LOPEZ",312220602,"LUISLOPEZ123@GMAIL.COM");
Insert into Cliente values("Ps", "dRO",334330602,"PEd2OZ11idcliente3@GMAIL.COM");

Insert into Trabajador values(1, "tom", "as",334550602,"tomm13@GMAIL.COM", 063000, 1);
Insert into Trabajador values(2, "yor", "dy",37650602,"yorr43@GMAIL.COM", 063000, 2);
Insert into Trabajador values(3, "ju", "as",36550602,"juas63@GMAIL.COM", 063000, 3);

Insert into Productos values(3, 4500, 5, "shampoo","imagen");
Insert into Productos values(4, 5500, 7, "gel","imagen");
Insert into Productos values(5, 7500, 9, "cera","imagen");

Insert into Servicios values(1, 2000, "corte");
Insert into Servicios values(2, 1500, "lavado");
Insert into Servicios values(3, 2500, "tinte");





