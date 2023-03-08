/* De acordo com as tabelas, programe um código SQL 
para gerar a estrutura do banco de dados dessa biblioteca. 
Siga as instruções: 
1. inclua a coluna DATA_NASCIMENTO na 
tabela ALUNO do tipo string e de tamanho 10 caracteres;
2. altere a coluna TELEFONE para CONTATO e seu tipo de dado para string; 
3. inclua o campo ISBN na tabela LIVRO, com tamanho de 13 caracteres do tipo inteiro;
4. e remova o campo ISBN da tabela LIVRO. 
*/

create database biblioteca;
use cadastro;

create table aluno (
ID int, 
Nome varchar(30) NOT NULL,
Matricula int,
Email varchar(30),
Endereço varchar(30),
Telefone int
);

insert into aluno
(ID, Nome, Matricula, Email, Endereço, Telefone)
values
('01', 'João Carlos', '1234', 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489'),
('02', 'José Vitor', '2345', 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
('03', 'Paulo André', '3456', 'Pandr@gmail.com', 'Rua do Sol', '(11)7825-4495');

select * from aluno;

alter table aluno
add column Data_Nascimento varchar(10) after Nome;

alter table aluno
change column Telefone Contato varchar(15);

create table livro(
cod_livro int,
titulo varchar(30),
autor varchar(30),
cod_sessao int
);

insert into livro
(cod_livro, titulo, autor, cod_sessao)
values
('01', 'Modelo Conceitutal e Diagramas ER', 'Pressman, Roger S.', '03'),
('02', 'Livro 2 : Modelo Relacional e Algebra Relacional', 'Heuser, Carlos Alberto', '01'),
('03', 'Livro 3: Linguagem SQL', 'Beighley, Lynn', '02');

alter table livro
add column ISBN int(13);

alter table livro
drop column ISBN;