use cinema;

INSERT INTO tbl_Ator VALUES
	(DEFAULT, 'Andrew Garfield', 'M', '1983/08/20'),
	(DEFAULT, 'Sandra Bullock', 'F', '1964/06/26'),
    (DEFAULT, 'Will Smith', 'M', '1968/09/25'),
    (DEFAULT, 'Harrison Ford', 'M', '1942/07/13'),
    (DEFAULT, 'Hugh Jackman', 'M', '1968/10/12'),
	(DEFAULT,  'Angelina Jolie', 'F','1975/06/04'),
    (DEFAULT, 'Keanu Reeves', 'M', '1964/09/02'),
	(DEFAULT, 'Jennifer Lawrence', 'F', '1990/08/15'),
    (DEFAULT, 'Sylvester Stallone', 'M', '1946/07/06'),
    (DEFAULT, 'James Mcavoy', 'M', '1979/04/21'),
    (DEFAULT, 'Brad Pitt', 'M', '1963/12/18'),
	(DEFAULT, 'Leonardo Dicaprio', 'M','1974/11/11'),
    (DEFAULT, 'Vin Diesel','M','1967/07/18'),
    (DEFAULT, 'Johnny Depp', 'M', '1963/06/09'),
    (DEFAULT, 'Robin Williams', 'M', '1951/07/21'),
    (DEFAULT, 'Robert Downey Jr.', 'M', '1965/04/04'),
    (DEFAULT, 'Patrick Stewart','M','1940/07/13'),
    (DEFAULT, 'Sandra Bullock', 'F', '1964/07/26'),
    (DEFAULT, 'Jackie Chan','M','1954/04/07'),
    (DEFAULT, 'Jennifer Aniston', 'F', '1969/02/11'),
    (DEFAULT, 'Jim Carrey','F', '1962/01/17'),
    (DEFAULT, 'Scarlett Johansson','F', '1984/11/22'),
    (DEFAULT, 'Megan Fox','F', '1986/05/16'),
    (DEFAULT, 'Ben Stiller','F', '1965/11/30'),
    (DEFAULT, 'Emma Stone','F', '1988/11/06');
    
desc tbl_Diretor;
INSERT INTO tbl_Diretor VALUES
(DEFAULT, 'Steven Spielberg', 'Estados Unidos', '1946/12/18', 'M'),
(DEFAULT, 'James Cameron', 'Canada', '1964/08/16', 'M'),
(DEFAULT, 'José Padilha', 'Brasil', '1967/08/01', 'M'),
(DEFAULT, 'George Lucas', 'Estados Unidos', '1944/05/14', 'M'),
(DEFAULT, 'Alan Rickman', 'Inglaterra', '1946/02/21', 'M'),
(DEFAULT, 'Fernando Meirelles', 'Brasil', '1965/11/09', 'M');


INSERT INTO tbl_Genero VALUES
(DEFAULT, 'Terror'),
(DEFAULT, 'Ação'),
(DEFAULT, 'Comedia'),
(DEFAULT, 'Drama'),
(DEFAULT, 'Suspense'),
(DEFAULT, 'Ficção'),
(DEFAULT, 'Romance'),
(DEFAULT, 'Animação');



DESC tbl_Filme;

INSERT INTO tbl_Filme VALUES
(DEFAULT, 'Viva: A Vida é Uma Festa' ,2017, 105 ,	8, 5),
 (DEFAULT, 'Logan', 2017, 137, 2, 1),
(DEFAULT, 'Um Sonho de Liberdade', 1995, 142, 4, 5),
(DEFAULT, 'Matrix',1999, 150, 6, 1),
(DEFAULT, 'Jumanji'	,1996, 104, 3, 6),
(DEFAULT, 'Cidade de Deus', 2002, 135, 2, 3),
(DEFAULT, 'O Resgate do Soldado Ryan',1998, 170, 2, 6),
(DEFAULT, 'Extraordinário', 2017, 113, 4, 5),
(DEFAULT, 'O Poderoso Chefão',1972, 178, 2, 2),
(DEFAULT, 'Forrest Gump', 1994, 142, 7, 1),
(DEFAULT, 'Truque de Mestre', 2013, 125, 2, 4),
(DEFAULT, 'Fragmentado', 2017, 117, 4, 6),
(DEFAULT, 'Avatar', 2009, 162, 6, 2),
(DEFAULT, 'O Preço do Amanhã', 2011, 109, 2, 3),
(DEFAULT, 'O Senhor dos Anéis: O Retorno do Rei', 2003, 200, 6, 5),
(DEFAULT, 'Toy Story', 1995, 141, 8, 2),
(DEFAULT, 'Star Wars: Os Últimos Jedi',	2017,	152,	6,	4),
(DEFAULT, 'O Menino do Pijama Listrado',	2008,	94,	4,	1),
(DEFAULT, 'O Lobo de Wall Street',	2013,	181,	4,	6),
(DEFAULT, 'A Hora do Rush',	1998,	98,	3,	5),
(DEFAULT, 'Piratas do Caribe - Maldição do Perola Negra',	2003,	143,	2,	4),
(DEFAULT, 'Passengeiros',	2016,	116,	2,	1),
(DEFAULT, 'Beleza Oculta',	2016,	97,	4,	2),
(DEFAULT, 'It - A Coisa',	2017,	134,	1,	3),
(DEFAULT, 'Rocky V',	1990,	111,	4,	4),
(DEFAULT, 'Titanic',	1997,	195,	7,	4),
(DEFAULT, 'Vingadores 4',	2019,	150,	2,	2),
(DEFAULT, 'Velozes e Furiosos 8',	2017,	136,	2,	6),
(DEFAULT, 'Transformers',	2007,	150,	2,	4),
(DEFAULT, 'Ilha do Medo',	2010,	139,	5,	1);

update tbl_Ator set nome_ator = 'Elizabeth Olsen', dt_nascimento = '1989/02/16' where id_ator = 18;

update tbl_Ator set sexo = 'M' where id_ator = 21;

update tbl_Ator set sexo = 'M' where id_ator = 24;

update tbl_Ator set nome_autor = 'Silvestre Stallone' where id_ator = 9;

select * from tbl_Ator;

select nome_filme, duracao from tbl_filme WHERE id_filme > 5;

select * FROM tbl_Filme where FK_id_diretor = 1;

select nome_filme, duracao, ano_lancamento from tbl_Filme where FK_id_genero = 1;

select nome_filme, duracao from tbl_filme where duracao > 120;

desc tbl_filme;

select nome_filme, ano_lancamento, duracao, FK_id_genero from tbl_filme where FK_id_diretor = 4 ORDER BY nome_filme desc;

alter table tbl_Ator change nome_autor nome_ator varchar(45) not null;


#DELETE FROM tbl_Filme WHERE id_filme = 31;

#INSERT INTO
 #   tbl_filme (
  #      Nome_filme,
   #     Ano_lancamento,
    #    Duracao,
     #   FK_Id_genero,
      #  FK_Id_diretor
   # )
#VALUES
 #   ("TESTE", 2001, 80, 8, 5);
    
    SELECT * FROM tbl_filme;


SELECT * FROM tbl_Ator WHERE sexo = 'F' AND DAY(dt_nascimento) = 22 OR MONTH(dt_nascimento) = 11;