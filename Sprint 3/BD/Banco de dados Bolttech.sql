create database BoltTech;
use BoltTech;

create table Empresa
(idEmpresa int primary key auto_increment,
NomeEmpresa varchar(45),
CNPJ varchar(20),
CEP char(9),
Rua varchar(45),
Número int,
Complemento varchar(20),
Cidade varchar(45),
UF char(2),
email varchar (60),
senha varchar (40)
);

Create table Funcionario(
idUsuario int primary key auto_increment,
NomeUsuario varchar(45),
Celular varchar(13),
Email varchar(45), 
Senha varchar(45),
fkEmpresa int,
foreign key(fkEmpresa) references Empresa(idEmpresa));


Create table estufa
(idEstufa int primary key auto_increment,
NomeEstufa varchar(45),
NumeroEstufa int,
statusEstufa varchar(10),
check(statusEstufa = 'regular' or statusEstufa ='irregular'),
qtdSensores int,
fkEmpresa1 int,
foreign key(fkEmpresa1) references Empresa(idEmpresa))auto_increment = 1000;

create table Sensor
(idSensor int primary key auto_increment,
StatusSensor varchar(25),
fkEstufa int,
foreign key(fkEstufa) references estufa(idEstufa));

create table temperatura
(fkSensor int,
foreign key(fkSensor) references Sensor(idSensor),
idTemperatura int primary key auto_increment,
Temperatura float,
DataTemperatura datetime default current_timestamp) ; 

create table publicacao
(idPubli int primary key auto_increment,
Descricao varchar(255),
DataPost datetime,
fkUsuario int,
fkEmpresa int,
foreign key(fkUsuario) references funcionario(idUsuario),
foreign key(fkEmpresa) references empresa(idEmpresa));


desc Empresa;
desc Usuário;
desc Estufa;
desc Sensor;
desc Temperatura;




