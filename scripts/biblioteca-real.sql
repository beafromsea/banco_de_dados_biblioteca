CREATE DATABASE `Biblioteca`;

USE Biblioteca;

CREATE TABLE `Enderecos` (
  `id_endereco` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `logradouro` varchar(255),
  `complemento` varchar(255),
  `numero` varchar(255),
  `cep` int,
  `bairro` varchar(255),
  `cidade` varchar(255),
  `estado` varchar(255),
  `pais` varchar(255)
);

CREATE TABLE `Generos` (
  `id_genero` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `genero` enum ('Ação', 'Comédia', 'Drama','Ficcao', 'Romance', 'Suspense', 'Terror')
);

CREATE TABLE `Editoras` (
  `id_editora` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `empresa` varchar(100),
  `cnpj` int,
  `tel` int,
  `email` varchar(255)
);

CREATE TABLE `Pessoas` (
  `id_pessoa` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(255),
  `email` varchar(255),
  `cpf` varchar(255),
  `telefone` varchar(255),
  `data_nasc` date,
  `id_endereco_fk` int,
  FOREIGN KEY (id_endereco_fk) REFERENCES Enderecos(id_endereco) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `Usuarios` (
  `id_usuario` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `senha` varchar(255),
  `id_pessoa_fk` int,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `Funcionarios` (
  `id_funcionario` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `cargo` varchar(255),
  `senha` varchar(255),
  `data_adm` varchar(255),
  `id_pessoa_fk` int,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);
