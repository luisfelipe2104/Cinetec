create database if not exists cinema;
# drop database cinema;
use cinema;

---------------------------------------------
-- --------Tabela Ator----------------------
---------------------------------------------
create table if not exists tbl_Ator(
	id_ator int not null auto_increment,
	nome_ator varchar(45) not null,
	sexo varchar(1) not null,
    dt_nascimento date not null,
    primary key(id_ator)
);



---------------------------------------------
-- ----------Tabela Diretor------------------
---------------------------------------------
create table if not exists tbl_Diretor(
	id_diretor int not null auto_increment,
	nome_diretor varchar(45) not null,
    nacionalidade varchar(10) not null,
    Dt_Nascimento date not null,
	primary key(id_diretor)
);

alter table tbl_Diretor add sexo enum('F', 'M') NOT NULL;
alter table tbl_Diretor modify nacionalidade varchar(45);

----------------------------------------------
-- -----------Tabela genero-------------------
---------------------------------------------
create table if not exists tbl_Genero(
	id_genero int not null auto_increment,
	genero varchar(45) not null,
	primary key(id_genero)
);


----------------------------------------------
-- -----------Tabela filme--------------------
----------------------------------------------
create table if not exists tbl_Filme(
	id_filme int not null auto_increment,
	nome_filme_PT varchar(45) not null,
	nome_filme_EN varchar(45) not null,
    ano_lancamento int(4) not null,
    duracao int(3) not null,
    
    FK_id_genero int not null,
    FK_id_diretor int not null,
    constraint id_genero foreign key(FK_id_genero) references tbl_Genero(id_genero),
    constraint id_diretor foreign key(FK_id_diretor) references tbl_Diretor(id_diretor),
	primary key(id_filme)
);

alter table tbl_Filme drop nome_filme_EN;
alter table tbl_Filme change nome_filme_PT nome_filme varchar(45) not null;

--------------------------------------------------------
-- ------------Tabela Filme-Ator-------------------------
--------------------------------------------------------
create table if not exists tbl_Filme_has_tbl_Ator(
	FK_id_filme int not null,
    FK_id_ator int not null,
	constraint id_filme foreign key(FK_id_filme) references tbl_Filme(id_filme),
	constraint id_ator foreign key(FK_id_ator) references tbl_Ator(id_ator),
    primary key(FK_id_filme, FK_id_ator)
);

alter table tbl_Filme_has_tbl_Ator rename FILME_E_ATOR;

--------------------------------------------------------
-- -----------Tabela Usuario----------------------------
--------------------------------------------------------

create table if not exists tbl_Usuario(
	id_usuario int primary key auto_increment,
    nome varchar(45) not null,
    email varchar(60) not null,
    senha varchar(15) not null,
	nacionalidade varchar(20) default 'Brasileiro',
    tipo_usuario enum('admin', 'comum'),
	data_hora datetime default now()
    
);
desc tbl_usuario;

alter table tbl_Usuario add telefone varchar(15);
alter table tbl_Usuario drop telefone;
alter table tbl_Usuario modify senha varchar(20) not null; #Serve apenas para alterar o tipo do dado.
alter table tbl_Usuario change nome nome_usuario varchar(45) not null; #Serve para alterar o nome da coluna e também para alterar o tipo do dado.
alter table tbl_Usuario rename tbl_usuarios; 

insert into tbl_usuarios values
(default, 'Osmar', 'Osmar@hotmail.com.br', 'superaidoul', default, 'comum', default),
(default, 'Luis', 'Luis@hotmail.com.br', 'sla321', default, 'admin', default),
(default, 'Camila', 'Camila@gmail.com.br', 'xingxum', default, 'comum', default),
(default, 'Tiago', 'Tiago@gmail.com.br', '123321a', default, 'admin', default);

# Assim como o comando INSERT o comnando UDPATE e DELETE também fazem parte do subagrupamento chamado DML (Data Manipulation Language) .
# O comando UPDATE deve ser utilizado quando desejarmos alterar/atualizar um dado em nosso banco. Para isso, deve-se utilizar a seguinte sintaxe:
# update nome_tabela set nome_campo = 'novo valor';

update tbl_usuarios set nome_usuario = 'Luis', email = 'Luis@gmail.com' where id_usuario = 2;


# Já o comando DELETE deve ser usado para excluir um dado do nosso banco. Para isso , a sintaxe é:
# 	* OBS: Vale ressaltar que ambos os comandos devem utilizar uma clausula "Where", caso contrário, a ação afetará todos os registros da tabela.

delete from tbl_usuarios where id_usuario = 2;
delete from tbl_usuarios where id_usuario = 4;
delete from tbl_usuarios where id_usuario = 1 or id_usuario = 3;

select * from tbl_usuarios;

#drop table tbl_usuarios;

update tbl_usuarios set nome_usuario = "sla mano";

commit;

rollback;

select now();

# INSERT INTO tbl_usuario(nome, email, senha, nacionalidade, tipo_usuario, data_hora) VALUES
# ('Luis', 'luis@gmail.com', 'luis@teste123', 'Brasileiro', 'admin', DEFAULT);


# INSERT INTO tbl_usuario(nome, email, senha, nacionalidade, tipo_usuario, data_hora) VALUES
# ('Luis', 'luis@gmail.com', 'luis@teste123', 'Brasileiro', 'admin', '2005/02/06 15:15:15');


-- melhor
# INSERT INTO tbl_usuario(nome, email, senha, tipo_usuario) 
#	VALUES('Luis', 'luis@gmail.com', 'luis@teste123', 'admin');
    
# INSERT INTO tbl_usuario VALUES
# (4,'Felipe', 'felipe@gmail.com', 'felipe@teste123', 'colombiano', 'comum', default);

# INSERT INTO tbl_usuario(nome, email, senha, tipo_usuario) VALUES
#	('Osmar', 'osmar@gmail.com', 'osmar@teste123', 'colombiano', 'comum', default),
#    (DEFAULT, 'Camila', 'camila@gmail.com', 'camila@teste123', 'italiana', 'comum', default);

select * from tbl_Genero;


