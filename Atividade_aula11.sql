use sistema_biblioteca;
--QUESTAO 1
--Encontre o número total de livros disponíveis na biblioteca com CNPJ'12345678000123'.
select count (*) total_livros 
from LIVRO_BIBLIOTECA
where cnpj = '12345678000123'

--QUESTAO 2
--Liste todos os funcionários que são bibliotecários.select * 
from BIBLIOTECARIO

--QUESTAO 3
--Encontre o título e o autor do livro com o número de registro 10.
select titulo, autor 
from LIVRO
where numero_registro = 10;

--QUESTAO 4
--Liste todos os eventos do tipo 'Workshop' que custam mais de R$150,00.
select *
from EVENTO
where tipo = 'workshop' and custo > 150.00;

--QUESTAO 5
--Encontre todos os livros de tecnologia disponíveis na biblioteca com CNPJ '23456789000134'

select BIBLIOTECA.cnpj
from BIBLIOTECA
join TECNOLOGIA on BIBLIOTECA.cnpj = '23456789000134';

--QUESTAO 6
--Liste os nomes dos atendentes que trabalham na biblioteca.
select nome from ATENDENTE

--QUESTAO 7
--Encontre todos os periódicos publicados no ano de 2023.
select * 
from PERIODICO
where ano_publicacao = 2023

--QUESTAO 8
--Liste todos os livros de sociologia que estão disponíveis em qualquer biblioteca.
select *
from LIVRO
join SOCIOLOGIA on LIVRO.numero_registro = SOCIOLOGIA.numero_registro 

--questao 9
--Encontre o nome e a matrícula de todos os educadores.select nome, matricula 
from EDUCADOR

--QUESTAO 10
--Liste os títulos de todos os periódicos que começam com a letra 'C'.
select * 
from PERIODICO 
where titulo like 'c%'

--QUESTAO 11
--11.Encontre todos os eventos do tipo 'Palestra' que ocorreram antes de 2022.select EVENTO.data, evento.tipofrom EVENTOwhere tipo = 'Palestra' and data < '2022'--QUESTAO 12--Liste todos os livros de ciência que foram publicados após 2015.select *from LIVROjoin CIENCIA on LIVRO.numero_registro =  CIENCIA.numero_registroand ano_publicacao > 2015--questao 13--13.Encontre os nomes dos técnicos de TI que têm 'Rodrigo' como parte do nome.select nomefrom TECNICO_TI where nome like 'Rodrigo%';--QUESTAO 14--Liste todos os funcionários que são assistentes.select * from FUNCIONARIOjoin ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula--QUESTAO 15--Encontre todos os livros que têm 'Programação' como parte do título.select * from LIVROwhere titulo like '%Programação%' ;--QUESTAO 16--Encontre todos os periódicos que têm 'Saúde' como parte do título.select *from PERIODICOwhere titulo like '%Saúde%'--QUESTÃO 17--Liste os nomes dos funcionários que são gerentes e começam com a letra 'C'.select *from FUNCIONARIOjoin GERENTE on FUNCIONARIO.matricula = GERENTE.matriculawhere GERENTE.nome like 'c%';--QUESTAO 18--Encontre todos os livros que foram publicados entre 2010 e 2020.select LIVRO.titulo, LIVRO.ano_publicacaofrom LIVROwhere ano_publicacao > 2010 and ano_publicacao < 2020order by LIVRO.titulo--QUESTAO 19--Liste todos os funcionários que são estagiários e têm 'Lima' como parte do nome.select FUNCIONARIO.nomefrom FUNCIONARIOjoin ESTAGIARIO on FUNCIONARIO.matricula = ESTAGIARIO.matriculawhere FUNCIONARIO.nome like '%lima%';