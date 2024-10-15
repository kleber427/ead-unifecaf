use ead_unifecaf;

CREATE TABLE tbl_jogos (
    id_jogo INT AUTO_INCREMENT PRIMARY KEY,
    nome_jogo VARCHAR(100),
    genero VARCHAR(50),
    data_lancamento VARCHAR(50),
    valor_jogo DECIMAL(10,2),
    fk_plataforma int);

CREATE TABLE tbl_plataforma (
    id_plataforma INT AUTO_INCREMENT PRIMARY KEY,
    nome_plataforma VARCHAR(100) );
    
    ALTER TABLE tbl_jogos ADD CONSTRAINT FOREIGN KEY (fk_plataforma) REFERENCES tbl_plataforma (id_plataforma);
    
    /* ADIÇÃO DE NOVO CAMPO*/
    
    ALTER TABLE tbl_jogos ADD obs_jogo varchar(300);
    
     /*ALTERAÇÃO DE COLUNA*/
     
     ALTER TABLE tbl_jogos CHANGE obs_jogo observacao_jogo varchar(300);
     
     /* ALTERAÇÃO DATATYPE*/
     
     ALTER TABLE tbl_jogos CHANGE observacao_jogo observacao_jogo varchar(500);
     
     /* ALTERAÇÃO DO NOME DA COLUNA*/
     
     ALTER TABLE tbl_jogos DROP observacao_jogo;
     
    INSERT INTO tbl_plataforma (nome_plataforma)
     values
    ('PlayStation 5'),
    ('Xbox Serie X'),
    ('Nintendo Switch'),
    ('PC'),
	('PlayStation 3'),
	('Xbox 360');
    
INSERT INTO tbl_jogos (nome_jogo, genero, data_lancamento, valor_jogo, fk_plataforma)
VALUES
    ('God of War ', 'Ação/Aventura', '2018-04-20', 49.99, 1),
    ('Call of Duty: Modern Warfare', 'FPS', '2019-10-25', 59.99, 2),
    ('Super Mario Odyssey', 'Plataforma', '2017-10-27', 59.99, 3),
    ('Red Dead Redemption 2', 'Ação/Aventura', '2018-10-26', 69.99, 4),
    ('Fortnite', 'Battle Royale', '2017-07-21', 0.00, 5),
    ('FIFA 23', 'Esportes', '2022-09-27', 59.99, 1),
    ('Minecraft', 'Sandbox', '2011-11-18', 26.95, 2),
    ('Apex Legends', 'Battle Royale', '2019-02-04', 0.00, 3),
    ('The Witcher 3: Wild Hunt', 'RPG', '2015-05-19', 39.99, 4),
    ('Among Us', 'Party', '2018-06-15', 4.99, 5);
    
    /* ATUALIZAÇÃO  DE RESGISTRO DE TABELA CRIADA*/
    
    UPDATE tbl_jogos SET nome_jogo = God of War 4  WHERE id_jogo= 4
    
    /* EXCLUSÃO DE DADOS DE UMA TABELA*/
    
    DELETE FROM tbl_jogo WHERE id_jogo =10;