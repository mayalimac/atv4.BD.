/*
De acordo com os conceitos estudados, exiba os resultados das consultas das operações select, project, união, intersecção e diferença. Siga as instruções com base na tabela apresentada em anexo.
1) - Mostre as informações apenas dos alunos aprovados. A aprovação é acima de 7,0;
2) - Exiba as informações dos alunos do primeiro ano com nota maior ou igual a 8,0;
3) - Exiba apenas os nomes e as notas dos alunos;
4) - Crie uma tabela PROFESSOR que apresente apenas o primeiro e o último nome do professor;
5) - Crie uma tabela ALUNO com o primeiro e o último nome de cada;
6) - Mostre o resultado da união entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR;
7) - Exiba o resultado da intersecção entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR;
8) - Exiba o resultado da diferença entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR. 
*/

create database escola;
use escola;
create table aluno (
P_nome varchar(30),
U_nome varchar(30),
Matricula int,
Serie varchar(5),
Disciplina varchar(10),
Nota float(2,1)
);

insert into aluno 
values 
('Vitoria','Cladino','5542','2°ano','Matematica','7.0'),
('Luiz','Silva','6215','1°ano','Portugues','8.0'),
('Andre','Carvalho','4521','3°ano','Matematica','9.5'),
('Alan','Vilela','3285','1°ano','Historia','8.0'),
('Figueiredo','Santos','4598','2°ano','Geografia','9.0');

select * from aluno
where Nota >= '7'; 

select * from aluno
where (Serie = '1°ano') and (Nota >= '8'); 

select P_nome, Nota from aluno; 

create table professor(
1_nome varchar(30),
2_nome varchar(30)
); 						

create table aluno2(
P_nome varchar(30),
U_nome varchar(30)
); 						

insert into professor 
values 
('Vitoria','Cladino'),
('Luiz','Silva'),
('Andre','Carvalho');

insert into aluno2 
values 
('Alan','Vilela'),
('Figueiredo','Santos'),
('Andre', 'Carvalho');

select * from aluno2
union
select * from professor; 

select P_nome, U_nome from aluno2
intersect
select * from professor; 
select * from aluno2
except
select * from professor; 