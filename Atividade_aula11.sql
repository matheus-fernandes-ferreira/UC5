use sistema_biblioteca;
--QUESTAO 1
select count (*) total_livros 
from LIVRO_BIBLIOTECA
where cnpj = '12345678000123'

--QUESTAO 2
select * from BIBLIOTECARIO

--QUESTAO 3
select titulo, autor from LIVRO
where numero_registro = 10

--QUESTAO 4
select * from EVENTO
where tipo = 'workshop' and custo > 150.00;

--QUESTAO 5
select BIBLIOTECA.cnpj
from BIBLIOTECA
join TECNOLOGIA on BIBLIOTECA.cnpj = '23456789000134';

--QUESTAO 6
select nome from ATENDENTE

--QUESTAO 7
select * from PERIODICO
where ano_publicacao = 2023

--QUESTAO 8

select *
from LIVRO
join SOCIOLOGIA on LIVRO.numero_registro = SOCIOLOGIA.numero_registro 

--questao 9
select nome, matricula from EDUCADOR

--QUESTAO 10
select * from PERIODICO where titulo like 'c%'

--QUESTAO 11
--11.Encontre todos os eventos do tipo 'Palestra' que ocorreram antes de 2022.select *from EVENTOwhere tipo = 'Palestra' and data < '205220101'--QUESTAO 12--Liste todos os livros de ciência que foram publicados após 2015.select *from LIVROjoin CIENCIA on livro.ano_publicacao > 2015--questao 13--13.Encontre os nomes dos técnicos de TI que têm 'Rodrigo' como parte do nome.select nomefrom TECNICO_TI where nome like 'Rodrigo%';--QUESTAO 14--Liste todos os funcionários que são assistentes.select * from FUNCIONARIOjoin ASSISTENTE on FUNCIONARIO.matricula = ASSISTENTE.matricula--QUESTAO 15--Encontre todos os livros que têm 'Programação' como parte do título.select * from LIVROwhere titulo like '%Programação%' 