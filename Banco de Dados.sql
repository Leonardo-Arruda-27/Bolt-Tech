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
);

-- Selecionar a tabela criada.
SELECT * FROM Cadastro;

-- Inserir dados na tabela.
INSERT INTO Cadastro VALUES 
(null,'João Carlos','84511043043','1972-07-15','JoaoCarlos06@outlook.com','11912345678','88816210','Rua Antônio de Morais',24,'São Paulo','Sorocaba'),
(null,'Wellison Costa','79539874068','1965-03-25','Wellison.Costa@outlook.com','321234569','71593675','Rua Bem-te-vi',354,'Minas Gerais','Montes Claros'),
(null, 'José Felipe', '31938319052', '1985-06-14', 'josefelipe@gmail.com', '21931215321', '27555970', 'Avenida Boa Vista', 23, 'Rio de Janeiro', 'Engenheiro Passos'),
(null, 'Nicolas Silva' , '37010350086', '1990-04-07', 'nicolassilva90@uol.com.br', '51987452125', '47813108', 'Rua Antônio Lúcio Peixoto', 1425, 'Bahia', 'Barreiras');


