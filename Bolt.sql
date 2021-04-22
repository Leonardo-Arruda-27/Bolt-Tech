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
UF char(2));

Create table Usuario(
idUsuario int primary key auto_increment,
NomeUsuario varchar(45),
Celular varchar(13),
Email varchar(45),
Função varchar(45), 
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

desc Empresa;
desc Usuário;
desc Estufa;
desc Sensor;
desc Temperatura;

insert into empresa values
(null,'Café Tuqui','64.210.211/0001','35700-591','Rua Walter Francisco',100,'Fazenda Tuqui','Sete Lagoas','MG'),
(null,'Nescoffee' ,'64.210.211/0001-31', '38182-258', 'Rua Alzira Carneiro de Paiva', 5, 'Fazenda Nescoffee', 'Araxá', 'MG'),
(null,'ZéCafé', '02.638.368/0001-05', '15703-296','Rua Durval Fernandes Chaves',15,'Fazenda do zé','São Paulo','SP'),
(null,'Love café', '02.638.368/0001-05', '05136-230', 'Rua Itália','5','Fazenda love','Jales','SP');

insert into Usuario values
(null,'Débora Pereira','31 96107-5111','DeboraPereira@uou.com','Proprietária','tuqui123',1),
(null,'Fabiana Cardoso','31 98692-7279 ','fabianacardoso@hotmail.com','CEO','nesco743',2),
(null,'Manuel Novaes','11 92966-3040','manuelnovaes@gmail.com','Gerente','zecafe12',3),
(null,'Mário Ramos','11 98193-3758','marioramos@hotmail.com','Diretor administrativo','love9999',4),
(null,'Lucas Souza','11 99224-3721','lucas_souza@hotmail.com','Proprietário','nescoffe1',2);

insert into estufa values(
null,'Estufa Alfa',1,'regular',2,1),
(null,'Estufa Beta',2,'irregular',1,1),
(null,'Estufa nescoffee',1,'regular',1,2),
(null,'Estufa café forte',1,'regular',1,3),
(null,'Estufa amor',1,'regular',1,4);

insert into sensor values
(null,'em funcionamento',1000),
(null,'em funcionamento',1000),
(null,'em manutenção',1001),
(null,'em funcionamento',1002),
(null,'em funcionamento',1003),
(null,'em funcionamento',1004);

select * from sensor;

INSERT INTO temperatura (fkSensor,idTemperatura,Temperatura) values 
(1,null,20.5),
(2,null,17.0),
(3,null,19.0),
(4,null,24.5),
(5,null,27.5),
(6,null,20.5),
(2,null,15.0),
(1,null,12.5);

select * from Empresa inner join usuário on fkEmpresa = idEmpresa inner join estufa on fkEmpresa = idEmpresa inner join sensor on fkEstufa = idEstufa 
inner join temperatura on fkSensor = idSensor ;

select * from estufa  inner join sensor on fkEstufa = idEstufa inner join temperatura on fkSensor = idSensor ;

update usuario set senha = '12345678' where idUsuario = 2;

select * from usuario;