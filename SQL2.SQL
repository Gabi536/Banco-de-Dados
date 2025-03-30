
USE DOCE;

CREATE TABLE FUNCIONARIOS (
   id INT PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(100) NOT NULL,
   data_nascimento DATE NOT NULL,
   salario DECIMAL(10,2) NOT NULL,
   departamento_id INT NOT NULL,
   cargo_id INT NOT NULL,
   FOREIGN KEY (departamento_id) REFERENCES Departamento(id),
   FOREIGN KEY (cargo_id) REFERENCES Cargos(id)
   );
   
CREATE TABLE Departamento (
   id INT PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR(100) NOT NULL
   );
   
CREATE TABLE Cargos (
   id INT PRIMARY KEY AUTO_INCREMENT,
   nome VARCHAR (100) NOT NULL,
   nivel VARCHAR(50) NOT NULL
   );

INSERT INTO Departamento (nome) VALUES ('produção'), ('atendimento'),
('administração'), ('marketing'), ('qualidade e segurança alimentar'),
('gerente');



INSERT INTO Cargos (nome, nivel) VALUES
('Confeiteiro','Pleno'),
('atendente', 'júnior'),
('Auxiliar Administrativo','Pleno'),
('Social Media', 'Júnior'),
('Auxiliar de controle de qualidade','Pleno'),
('Gerente','Pleno');

INSERT INTO Funcionarios(nome, data_nascimento, salario, departamento_id,
cargo_id) 
VALUES
('ana maria', '1998-09-15', 5500.00, 1, 5),
('paulo da silva', '2002-04-29', 4800.00, 1, 5),
('filipa mendez', '2003-06-12', 2500.00, 2, 3),
('lucas miguel', '2005-01-10', 2500.00, 2, 3),
('julio carlos', '1990-09-30', 6000.00, 3, 1),
('liz maria', '2000-10-08', 4000.00, 4, 3),
('joão paulo', '1995-07-18', 6500.00, 6, 3),
('daniela prada', '1998-09-19', 4000.00, 6, 3); 

   SELECT * FROM Departamento;
   SELECT * FROM Cargos;
   
   
   -- 1 Pergunta: Encontre o Maior Salario --
   SELECT MAX(salario) AS Salario 
   FROM funcionarios;
   
   
   -- 2 Pergunta: Encontre o Menor Saldo --
   SELECT MIN(salario) AS salario
   FROM funcionarios;
   
   
   -- 3 Pergunta: Qual a quantidade de Funcionarios --
   SELECT COUNT(*) AS funcionarios
   FROM funcionarios;
   
   -- 4 Pergunta: Filtre os funcionarios nascidos apartir de 1990 --
   SELECT data_nascimento
   FROM funcionarios
   WHERE YEAR (data_nascimento) = 1990;
   
   -- 5 Pergunta: Encontre a Media Salarial --
   SELECT avg(salario) AS salario
   FROM funcionarios;
   
   -- 6 Pergunta: Extraia os 3 primeiros Caracteres do Nome --
   SELECT SUBSTRING(nome, 1, 3) AS nome
   FROM funcionarios;
   
   -- 7 Pergunta: Contar quantos Funcionarios por Departamento --
   SELECT COUNT(f.id) AS QTFUNC,d.nome AS DEP
   FROM funcionarios f
   JOIN departamento d ON f.departamento_id = d.id
   GROUP BY d.nome;
   
   
   
   -- 8 Pergunta: Contar funcionarios existem em Cargo --
   
   SELECT COUNT(f.id) AS QTFUNC,c.nome AS DEP
   FROM funcionarios f
   JOIN cargos c ON f.cargo_id = c.id
   GROUP BY c.nome;
   