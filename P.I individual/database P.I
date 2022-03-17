CREATE DATABASE Graotech;
USE Graotech;
CREATE TABLE cliente (
IDcliente INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
nome VARCHAR (100),
CPF VARCHAR (11),
endereco VARCHAR (100),
telefone VARCHAR (11),
IDregistro INT
);
INSERT INTO cliente (nome, CPF, endereco, telefone) 
VALUES
('Rafael Sampaio Macedo', '47317098817', 'Rua Joaquim Carlos Klein 63', '11958954727'),
('Fabiano Souza', '21923479161', 'Rua jabaquara 153', '21975216972'),
('Samoel Vinicius', '47930179856', 'Avenida Paulista 10087', '12987139510'),
('Ricardo', '75630892173', 'Sapopemba 793', '11973601405'),
('Jefferson', '2479307912', 'Rua Augusta 1578', '11936201775'),
('Lucas Bispo', '74123987127', 'Avenida Interlagos 9520', '81997851235');

CREATE TABLE registro (
IDregistro INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
email VARCHAR (100),
senha VARCHAR (20),
nome_usuario VARCHAR (30)
);
INSERT INTO registro (email, senha, nome_usuario)
VALUES
('rafa.sampaio.m@gmail.com', 'Abc123', 'RafaelSampaio777'),
('fabiano.souza@gmail.com', '789Xyz', 'FabiSouza'),
('samuel@gmail.com', '456QAZ', 'Samuka1'),
('ricardo@gmail.com', '123456', 'Rick123'),
('jeff@gmail.com', '987654', 'Jeff'),
('lucas.bispo@gmail.com', '4862', 'Lukaas');

UPDATE cliente SET IDregistro = 1 WHERE IDcliente = 1;
UPDATE cliente SET IDregistro = 2 WHERE IDcliente = 2;
UPDATE cliente SET IDregistro = 3 WHERE IDcliente = 3;
UPDATE cliente SET IDregistro = 4 WHERE IDcliente = 4;
UPDATE cliente SET IDregistro = 5 WHERE IDcliente = 5;
UPDATE cliente SET IDregistro = 6 WHERE IDcliente = 6;

CREATE TABLE sensores (
IDsensor INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
codigo INT,
IDcliente INT
);
INSERT INTO sensores (codigo, IDcliente)
VALUES
(152387416, 1),
(789314562, 2),
(453219871, 3),
(745321898, 4),
(523678912, 5),
(412397856, 6),
(878621568, 2),
(478952314, 2);

CREATE TABLE sensor1 (
temperatura VARCHAR (6),
umidade VARCHAR (6),
data_hora VARCHAR (16)
);
INSERT INTO sensor1
VALUES
('18°', '60%', '22/06/2021 13:15'),
('18,5°', '60,6%', '22/06/2021 13:20'),
('18°', '60,2%', '22/06/2021 13:25'),
('19°', '60,7%', '22/06/2021 13:30'),
('18°', '61%', '22/06/2021 13:35'),
('17°', '60,9%', '22/06/2021 13:40'),
('17,5°', '62%', '22/06/2021 13:45');

SELECT * FROM cliente;
SELECT * FROM registro;
SELECT * FROM sensores;
SELECT * FROM sensor1;