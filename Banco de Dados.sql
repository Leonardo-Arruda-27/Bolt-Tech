-- Criar banco de dados.
CREATE DATABASE BoltTech;

-- Usar o banco de dados.
USE BoltTech;

-- Criar tabelas.
CREATE TABLE Cadastro (
id int primary key auto_increment,
nome varchar(100),
cpf varchar(11),
nascimento date,
email varchar(100),
telefone varchar(20),
cep varchar(20),
rua varchar(100),
numero int,
estado varchar(20),
cidade varchar(20)
)auto_increment = 1000;

-- Selecionar a tabela criada.
SELECT * FROM Cadastro;

-- Inserir dados na tabela.
INSERT INTO Cadastro VALUES 
(null,'João Carlos','84511043043','1972-07-15','JoaoCarlos06@outlook.com','11912345678','88816210','Rua Antônio de Morais',24,'São Paulo','Sorocaba'),
(null,'Wellison Costa','79539874068','1965-03-25','Wellison.Costa@outlook.com','321234569','71593675','Rua Bem-te-vi',354,'Minas Gerais','Montes Claros'),
(null, 'José Felipe', '31938319052', '1985-06-14', 'josefelipe@gmail.com', '21931215321', '27555970', 'Avenida Boa Vista', 23, 'Rio de Janeiro', 'Engenheiro Passos'),
(null, 'Nicolas Silva' , '37010350086', '1990-04-07', 'nicolassilva90@uol.com.br', '51987452125', '47813108', 'Rua Antônio Lúcio Peixoto', 1425, 'Bahia', 'Barreiras'),
(null, 'José Pinto' , '19714151031', '1982-05-17', 'zepinto@bol.com.br', '51981818989', '76801834', 'Rua Bocaiúva', 57, 'Rondônia', 'Porto Velho'),
(null, 'Clodoalda Rodrigues' , '81918216053', '1962-11-27', 'cloclorodri@terra.com.br', '51981817171', '69307600', 'Rua José Celestino da Luz', 10, 'Roraima', 'Boa Vista'),
(null,'Elaine Ferreira','40028922175','1973-01-26','laineabencoada@hotmail.com','1147654272855','09361110','Rua primavera de Jesus',840,'São Paulo','Mauá');

CREATE TABLE Estufas (
idEstufa int primary key auto_increment,
nomeEstufa varchar(50),
faseEstufa varchar(10),
dataTemperatura dateTime
);


INSERT INTO Estufas VALUES
(null, 'A', 'verde', '2021-03-12 14:05:15'),
(null, 'B', 'verde', '2021-03-12 16:09:17'),
(null, 'C', 'laranja', '2021-03-12 16:10:18'),
(null, 'D', 'vermelho', '2021-03-12 16:13:19');

select * from Estufas;

CREATE TABLE Sensor (
idSensor int primary key auto_increment,
temperatura int,
statusSensor varchar(10),
check (statusSensor = 'ativado' or statusSensor = 'desativado' 
or statusSensor = 'manutenção'));

INSERT INTO Sensor VALUES
(null, 20, 'ativado'),
(null, 18, 'ativado'),
(null, 25, 'ativado'),
(null, 3, 'ativado');

select*from Sensor;
