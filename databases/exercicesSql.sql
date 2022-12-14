use cinema;

SELECT * FROM tbl_Filme;
#----------------------------------------------------------------------------------------------------------------------------------------------------
# EXER 1
# 1.Selecionar todos os atores que comecem com a letra "A".

SELECT * FROM tbl_Ator WHERE nome_ator LIKE 'A%';
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 2
# 2.Selecionar a maior duracao dos filmes cadastrados.

SELECT MAX(duracao) maior_duracao, nome_filme FROM tbl_Filme WHERE duracao = (SELECT MAX(duracao) FROM tbl_Filme);
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 3
# 3.Selecionar a menor duracao dos filmes lancado entre os anos 2000 e 2010.

SELECT MIN(duracao) menor_duracao, nome_filme, ano_lancamento FROM tbl_Filme WHERE duracao = (SELECT MIN(duracao) FROM tbl_Filme) AND ano_lancamento >= 2000 AND ano_lancamento <= 2010;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 4
# 4.Selecionar os filmes exibindo apenas aqueles que pertencerem ao genero "A????o".

SELECT nome_filme, ano_lancamento, duracao, genero FROM tbl_Filme f JOIN tbl_Genero g ON f.FK_id_genero = g.id_genero WHERE g.genero = "A????o";
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 5
# 5.Selecionar os filmes exibindo aqueles que pertecerem ao genero "Drama" e que tenham sido lan??ados apos o ano 2010.

SELECT nome_filme, ano_lancamento, duracao, genero FROM tbl_Filme f JOIN tbl_Genero g ON f.FK_id_genero = g.id_genero WHERE g.genero = "Drama" AND f.ano_lancamento > 2010;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 6
# 6.Exibir o nome de todos os filmes e seus anos de lancamentos organizando  da seguinte maneira:
# (ordem de ano do mais novo para o mais velho e nome do filme em ordem alfabetica).

SELECT nome_filme, ano_lancamento FROM tbl_Filme ORDER BY ano_lancamento DESC, nome_filme ASC;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 7
# 7.Exibir a soma da duracao de todos os filmes que foram lancados entre 2010 e 2018 e pertecerem ao genero "fic??ao"

SELECT SUM(duracao) soma_duracao, genero FROM tbl_Filme f JOIN tbl_Genero g ON f.FK_id_genero = g.id_genero WHERE g.genero = "Fic????o" AND ano_lancamento >= 2010 AND ano_lancamento <= 2018;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 8
# 8.Exibir quantos filmes foram lancados antes do ano 2000.

SELECT COUNT(*) qntd_filme_antes_de_2000 FROM tbl_Filme WHERE ano_lancamento < 2000;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 9
# 9.Exibir qual a media de duracao dos filmes lancados ap??s o ano 2000.

SELECT AVG(duracao) media_duracao FROM tbl_Filme WHERE ano_lancamento > 2000;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 10
# 10.Quantos filmes pertecem a cada um dos generos.

SELECT genero, count(*) qntd_filme FROM tbl_Filme f JOIN tbl_Genero g ON f.FK_id_genero = g.id_genero GROUP BY genero;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 11
# 11.Exibir em ordem alfabetica quais atores e em quais anos eles nasceram, apenas para quem nasceu entre 1960 e 1980.
#WHERE YEAR(nascimento) = '2000' AND MONTH(nascimento) = '07' AND DAY(nascimento) = '07'

SELECT nome_ator, dt_nascimento FROM tbl_Ator WHERE YEAR(dt_nascimento) >= 1960 AND YEAR(dt_nascimento) <= 1980 ORDER BY nome_ator ASC;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 12
# 12.Exibir todas informa????es sobre os atores do mais jovem para o mais velho.

SELECT *, YEAR(now()) - YEAR(dt_nascimento) Idade FROM tbl_Ator ORDER BY YEAR(dt_nascimento) DESC, MONTH(dt_nascimento) DESC, DAY(dt_nascimento) DESC;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 13
# 13.Selecionar quantos filmes foram lancados em cada um dos anos.

SELECT ano_lancamento ano, COUNT(*) qntd_filmes FROM tbl_Filme GROUP BY ano_lancamento;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 14
# 14.Exibir quantos diretores pertencem a cada pais.

SELECT nacionalidade, count(*) diretores FROM tbl_Diretor GROUP BY nacionalidade;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 15
# 15.Exibir o total de filmes, a soma das dura????es e a media das duracoes para cada um dos generos de filmes organizando da menor media para a maior.

SELECT COUNT(*) filmes, SUM(duracao) soma_duracao, AVG(duracao) media_duracao, genero FROM tbl_Filme f JOIN tbl_Genero g ON f.FK_id_genero = g.id_genero GROUP BY genero ORDER BY AVG(duracao) ASC;
#----------------------------------------------------------------------------------------------------------------------------------------------------
-- //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
#----------------------------------------------------------------------------------------------------------------------------------------------------
#EXER 16
# 16.Selecionar todos os filmes que contenham a silaba "DE" no nome e em ordem alfabetica de Z-A.

SELECT * FROM tbl_Filme WHERE nome_filme LIKE '%de%' ORDER BY nome_filme DESC;
#----------------------------------------------------------------------------------------------------------------------------------------------------