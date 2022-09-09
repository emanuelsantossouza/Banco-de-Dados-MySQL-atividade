CREATE DATABASE IF NOT EXISTS SiteFilmes;
Use SiteFilmes;

CREATE TABLE IF NOT EXISTS Filme (
	idFilme				INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nomeFilme			VARCHAR(200) NOT NULL,
    sinopse				VARCHAR(8000),
    duracao				INT NOT NULL,
    anoEstreia			DATE,
    Primary key (idFilme)
);

CREATE TABLE IF NOT EXISTS Genero (
	idGenero			INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nomeGenero			VARCHAR(50),
    Primary key (idGenero)
);

CREATE TABLE IF NOT EXISTS TipoAtuacao (
	idTipoAtuacao		INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nomeTipoAtuacao  	VARCHAR(50),
    Primary key (idTipoAtuacao)
);

CREATE TABLE IF NOT EXISTS Pais (
	idPais				INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nomePais			VARCHAR(50),
    Primary key (idPais)
);

CREATE TABLE IF NOT EXISTS GeneroFilme (
	idFilme				INT UNSIGNED NOT NULL,
    idGenero			INT UNSIGNED NOT NULL
);

ALTER TABLE GeneroFilme ADD CONSTRAINT FK_GeneroFilme_Filme
	FOREIGN KEY (idFilme) REFERENCES Filme(idFilme);
    
ALTER TABLE GeneroFilme ADD CONSTRAINT FK_GeneroFilme_Genero
	FOREIGN KEY (idGenero) REFERENCES Genero(idGenero);
    

CREATE TABLE IF NOT EXISTS PaisFilme (
	idFilme			INT UNSIGNED NOT NULL,
    idPais			INT UNSIGNED NOT NULL
);

ALTER TABLE PaisFilme ADD CONSTRAINT FK_PaisFilme_Filme
	FOREIGN KEY (idFilme) REFERENCES Filme(idFilme);
    
ALTER TABLE PaisFilme ADD CONSTRAINT FK_GeneroFilme_Pais
	FOREIGN KEY (idPais) REFERENCES Pais(idPais);
    

CREATE TABLE IF NOT EXISTS Pessoa (
	idPessoa			INT UNSIGNED NOT NULL,
    idPais			INT UNSIGNED NOT NULL
); 


