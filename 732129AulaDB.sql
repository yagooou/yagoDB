create database dbAula;
use dbAula;
create table tbInstrutores(id int primary key auto_increment not null, nome varchar(50), email varchar(50), valor_hora int(10), certificados varchar(255));
select * from tbInstrutores;
create table tbCursos(id int primary key auto_increment not null, nome varchar(50), requisito varchar(255), carga_horaria smallint(5));
select * from tbCursos;
create table tbMatriculas(id int primary key auto_increment not null, data_matricula date);
select * from tbMatriculas;
create table tbAlunos(id int primary key auto_increment not null, cpf char(11), nome varchar(50), email varchar(50),fone char (14), data_nascimento date);
select * from tbAlunos;
create table tbTurmas(id int primary key auto_increment not null, data_inicio date, data_final date, carga_horaria smallint(5));
select * from tbTurmas;

alter table tbMatriculas add column turmas_id int(10);
alter table tbMatriculas add constraint fkTurmas foreign key (turmas_id) references tbTurmas (id);
alter table tbMatriculas add column alunos_id int(10);
alter table tbMatriculas add constraint fkAlunos foreign key (alunos_id) references tbAlunos (id);

alter table tbTurmas add column instrutores_id int(10);
alter table tbTurmas add constraint fkInstrutores foreign key (instrutores_id) references tbInstrutores (id);
alter table tbTurmas add column cursos_id int (10);
alter table tbTurmas add constraint fkCursos foreign key (cursos_id) references tbCursos (id);

INSERT INTO tbInstrutores VALUES("1","Yago", "yago@gmail.com", "10", "teste");
INSERT INTO tbAlunos VALUES("1", "123456", "Yago", "yago1@gmail.com", "95544-0225", "1997-06-18");
INSERT INTO tbAlunos VALUES("2", "123456", "Yago M", "yago2@gmail.com", "1234-0815", "1997-09-30");

select * from tbInstrutores;
select * from tbAlunos;