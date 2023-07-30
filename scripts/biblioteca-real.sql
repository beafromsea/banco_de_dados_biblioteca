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
  `empresa` varchar(255),
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

CREATE TABLE `Autores` (
  `id_autor` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `qtd_livros` int,
   `id_pessoa_fk` int,
  FOREIGN KEY (id_pessoa_fk) REFERENCES Pessoas(id_pessoa) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `Livros` (
  `id_livro` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255),
  `ano` date,
  `edicao` varchar(255),
  `editora` varchar(255),
  `isbn` int,
  `disponibilidade` boolean,
  `id_genero_fk` int,
  `id_autor_fk` int,
  `id_editora_fk` int,
  FOREIGN KEY (id_genero_fk) REFERENCES Generos(id_genero) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_autor_fk) REFERENCES Autores(id_autor) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_editora_fk) REFERENCES Editoras(id_editora) ON UPDATE CASCADE ON DELETE CASCADE
);

CREATE TABLE `Emprestimos` (
  `id_emprestimo` int UNIQUE PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `data_emprestimo` timestamp,
  `data_devolucao` date,
  `id_livro_fk` int,
  `id_usuario_fk` int,
  `id_funcionario_fk` int,
  FOREIGN KEY (id_livro_fk) REFERENCES Livros(id_livro) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_usuario_fk) REFERENCES Usuarios(id_usuario) ON UPDATE CASCADE ON DELETE CASCADE,
  FOREIGN KEY (id_funcionario_fk) REFERENCES Funcionarios(id_funcionario) ON UPDATE CASCADE ON DELETE CASCADE
);