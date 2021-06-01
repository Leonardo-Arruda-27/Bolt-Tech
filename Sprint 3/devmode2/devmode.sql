use pitstorm;

show tables;


alter table CadastroTestando add foreign key (fk_tesntando) references leitura (id);
select * from leitura;

SELECT 
    login_testando,
    descricao,
    dataPost,
    empresa
    FROM publicacao
    INNER JOIN CadastroTestando
    ON Publicacao.fkUsuario = id_testando
    ORDER BY publicacao.id DESC;

select * from publicacao;
create table publicacao(
id int primary key auto_increment,
descricao varchar(100),
fkUsuario int,
dataPost  DATETIME,
empresa varchar(30)
);


drop table publicacao;


select * from publicacao;

alter table publicacao add foreign key(fkUsuario) references CadastroTestando(id_testando);
select * from publicacao join CadastroTestando on fkUsuario = id_testando ;

create table CadastroTestando(
id_testando INT PRIMARY KEY AUTO_INCREMENT,
email_testando varchar(45),
login_testando varchar(45),
senha_testando varchar(45),
fk_tesntando int
);

select * from  CadastroTestando;

CREATE TABLE leitura (
	idTemp INT PRIMARY KEY AUTO_INCREMENT,
	temperatura DECIMAL,
	momento DATETIME,
	fkSensor INT
);

select * from leitura;


select * from empresa;
drop table leitura;



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



select * from cadastrando;













  