/* Desenvolva um banco de dados que relacione tabelas 
através de chaves estrangeiras ou nomes de colunas iguais. 
Após isso, realize todos os comandos Joins estudados. 
SQL Joins, como: Inner Join, Left Join, Right Join, Outer Join,*/


alter table pessoas add curso_preferido int;

alter table pessoas 
add foreign key (curso_preferido)
references cursos(idcurso);

UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '7' WHERE (`id` = '1');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '4' WHERE (`id` = '2');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '9' WHERE (`id` = '3');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '22' WHERE (`id` = '4');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '14' WHERE (`id` = '5');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '30' WHERE (`id` = '6');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '13' WHERE (`id` = '7');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '11' WHERE (`id` = '8');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '14' WHERE (`id` = '9');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '16' WHERE (`id` = '10');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '18' WHERE (`id` = '11');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '24' WHERE (`id` = '12');
UPDATE `cadastro`.`pessoas` SET `curso_preferido` = '26' WHERE (`id` = '13');

select pessoas.nome, cursos.nome, cursos.ano
from pessoas inner join cursos
on cursos.idcurso = pessoas.curso_preferido
order by pessoas.nome;

select pessoas.nome, cursos.nome, cursos.ano
from pessoas left outer join cursos
on cursos.idcurso = pessoas.curso_preferido
order by pessoas.nome;

select pessoas.nome, cursos.nome, cursos.ano
from pessoas right outer join cursos
on cursos.idcurso = pessoas.curso_preferido
order by pessoas.nome;

select pessoas.nome, cursos.nome, cursos.ano
from pessoas left join cursos
on cursos.idcurso = pessoas.curso_preferido
union
select pessoas.nome, cursos.nome, cursos.ano
from pessoas right join cursos
on cursos.idcurso = pessoas.curso_preferido;