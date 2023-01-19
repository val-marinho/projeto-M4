CREATE DATABASE sistema_de_acompanhamento;
USE sistema_de_acompanhamento;

CREATE TABLE professor (
id INT PRIMARY KEY auto_increment,
salario INT NOT NULL,
nome VARCHAR (40) NOT NULL,
idade INT NOT NULL,
cpf VARCHAR (20) NOT NULL
);

CREATE TABLE curso (
id INT PRIMARY KEY auto_increment,
carga_horaria INT NOT NULL,
disciplina VARCHAR (50) NOT NULL
);

CREATE TABLE turma (
id INT PRIMARY KEY auto_increment,
id_curso INT NULL ,
id_professor INT NOT NULL,
sala INT NOT NULL,
turno VARCHAR (30) NOT NULL
);

CREATE TABLE aluno(
id INT PRIMARY KEY auto_increment,
matricula INT NOT NULL,
nome VARCHAR (40) NOT NULL,
idade INT NOT NULL,
cpf VARCHAR(20) NOT NULL
);

CREATE TABLE aluno_turma (
	id INT PRIMARY KEY auto_increment ,
	id_aluno INT NOT NULL ,
	id_turma INT NOT NULL 
);

ALTER TABLE turma
ADD CONSTRAINT id_fk_professor FOREIGN KEY (id_professor) REFERENCES professor(id);

ALTER TABLE turma
ADD CONSTRAINT id_fk_curso FOREIGN KEY (id_curso) REFERENCES curso(id);


ALTER TABLE aluno_turma
ADD CONSTRAINT id_fk_aluno FOREIGN KEY (id_aluno) REFERENCES aluno_turma(id);

ALTER TABLE aluno_turma
ADD CONSTRAINT id_fk_turma FOREIGN KEY (id_turma) REFERENCES aluno_turma(id);

INSERT INTO professor (salario,nome,idade,cpf) 
VALUES (2000, "Matheus",25,"102.784.718-45");

INSERT INTO professor (salario,nome,idade,cpf) 
VALUES (3000, "Lucas",23,"103.634.618-52");

INSERT INTO professor (salario,nome,idade,cpf) 
VALUES (3200, "Otavio",33,"201.524.708-22");

INSERT INTO curso (carga_horaria, disciplina)
VALUES (120, "front-end");

INSERT INTO curso (carga_horaria, disciplina)
VALUES (150, "back-end");

INSERT INTO curso (carga_horaria, disciplina)
VALUES (80, "soft-skill");

INSERT INTO turma (id_curso,id_professor, sala,turno)
VALUES (1,1,303,"Manhã");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (1,1,303,"Tarde");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (2,2,305,"Manhã");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (2,2,305,"Tarde");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (3,3,405,"Manhã");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (3,3,405,"Tarde");

INSERT INTO turma (id_curso,id_professor,sala,turno)
VALUES (1,3,305,"Tarde");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (111111, "Pedro",18,"301.524.708-22");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (2222222, "Vanessa",19,"401.524.708-22");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (33333333, "Mario",29,"501.524.708-22");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (4444444, "Carla",22,"601.524.708-22");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (5555555, "Renato",15,"601.524.708-22");

INSERT INTO aluno (matricula,nome,idade,cpf) 
VALUES (6666666, "Marcia",28,"601.524.708-22");

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(1,1);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(2,1);

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(3,2);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(4,2);

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(5,3);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(6,3);

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(1,4);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(2,4);

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(3,5);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(4,5);

INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(5,6);
INSERT INTO aluno_turma (id_aluno ,id_turma)
VALUES(6,6);