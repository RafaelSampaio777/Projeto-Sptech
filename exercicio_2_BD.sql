-- criação do banco;
CREATE DATABASE sprint1;
USE sprint1;

-- criação tabela;
CREATE TABLE Musica (
IDmusica INT PRIMARY KEY,
titulo VARCHAR (40),
artista VARCHAR (40),
genero VARCHAR (40)
);

-- inserindo dados na tabela;
INSERT INTO Musica
VALUES
(1, 'Maps', 'Maroon 5', 'pop'),
(2, 'Roça Roça', 'MC Brinquedo', 'funk'),
(3, 'Psychosocial', 'Slipknot', 'metal'),
(4, 'Sugar', 'Maroon 5', 'pop'),
(5, 'The Devil in I', 'Slipknot', 'metal'),
(6, 'Temporal de Amor', 'Leonardo', 'sertanejo'),
(7, 'Essa é a dança', 'MC Brinquedo', 'funk'),
(8, 'Não aprendi dizer adeus', 'Leonardo', 'sertanejo'),
(9, 'Secretária', 'Amado Batista', 'sertanejo'),
(10, 'Gostava tanto de você', 'Tim Maia', 'Música regional brasileira');

-- Exibir todos os dados da tabela;
SELECT * FROM Musica;

-- Adicionar o campo curtidas do tipo int na tabela;
ALTER TABLE Musica ADD COLUMN curtidas INT;

-- Atualizar o campo curtidas de todas as músicas inseridas;
UPDATE Musica SET curtidas = 2000000 WHERE IDmusica = 1;
UPDATE Musica SET curtidas = 1400000 WHERE IDmusica = 2;
UPDATE Musica SET curtidas = 3100000 WHERE IDmusica = 3;
UPDATE Musica SET curtidas = 14000000 WHERE IDmusica = 4;
UPDATE Musica SET curtidas = 2300000 WHERE IDmusica = 5;
UPDATE Musica SET curtidas = 21000 WHERE IDmusica = 6;
UPDATE Musica SET curtidas = 27000 WHERE IDmusica = 7;
UPDATE Musica SET curtidas = 17000 WHERE IDmusica = 8;
UPDATE Musica SET curtidas = 509000 WHERE IDmusica = 9;
UPDATE Musica SET curtidas = 249000 WHERE IDmusica = 10;

-- Modificar o campo artista do tamanho 40 para o tamanho 80;
ALTER TABLE Musica MODIFY COLUMN artista VARCHAR (80);

-- Atualizar a quantidade de curtidas da música com id=1;
UPDATE Musica SET curtidas = 7000000 WHERE IDmusica = 1;

-- Atualizar a quantidade de curtidas das músicas com id=2 e com o id=3;
UPDATE Musica SET curtidas = 20000000 WHERE IDmusica = 2;
UPDATE musica SET curtidas = 6000000 WHERE IDmusica = 3;

-- Atualizar o nome da música com o id=5;
UPDATE Musica SET titulo = 'Unsainted' WHERE IDmusica = 5;

-- Excluir a música com o id=4;
DELETE FROM Musica WHERE IDmusica = 4;

-- Exibir as músicas onde o gênero é diferente de funk;
SELECT titulo FROM Musica WHERE genero <> 'funk';

-- Exibir os dados das músicas que tem curtidas maior ou igual a 20;
SELECT * FROM Musica WHERE curtidas >= 20;

-- Descrever os campos da tabela mostrando a atualização do campo artista;
DESCRIBE Musica;

-- Limpar os dados da tabela; 
TRUNCATE TABLE Musica;
SELECT * FROM Musica;