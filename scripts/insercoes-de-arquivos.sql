INSERT INTO BIBLIOTECA.Enderecos(logradouro, complemento, numero, cep, bairro, cidade, estado, pais)
	VALUES
		('Rua Conde dos Arcos', 'Casa 01', '217', '81010120', 'Lindóia', 'Curitiba', 'PR','BR'),
        ('Rua XV de Novembro', 'Ap 01 Bloco 02', '1517', '80060907', 'Centro', 'Curitiba', 'PR','BR'),
        ('Rua Brigadeiro Franco', 'Loja 101', '2300', '80250903', 'Centro', 'Curitiba', 'PR','BR'),
        ('Avenida Cândido de Abreu', 'Casa 02', ' 817', '80530908', 'Centro Cívico', 'Curitiba', 'PR','BR'),
        ('Rua Engenheiro Ariel Villar Tacla', 'Ap 02 Bloco 03', '500', '81350971', 'Cidade Industrial', 'Curitiba', 'PR','BR'),
        ('Rua João Negrão', 'Loja 102', '1251', '80230973', 'Rebouças', 'Curitiba', 'PR','BR'),
        ('Rua Raul Pompéia', 'Casa 02', '2446', '81260150', 'Cidade Industrial de Curitiba', 'Curitiba', 'PR','BR'),
        ('Avenida República Argentina', 'Casa 05', '825', '80240210', 'Água Verde', 'Curitiba', 'PR','BR'),
        ('Avenida Manoel Ribas', 'Loja 10', '4557', '82400000', 'Santa Felicidade', 'Curitiba', 'PR','BR'),
        ('Rua Francisco Derosso', 'Bloco 07 Ap 01', '1726', '81720000', 'Xaxim', 'Curitiba', 'PR','BR'),
        ('Rua São José dos Pinhais ', 'Casa 02', '528', '81910010', 'Sítio Cercado', 'Curitiba', 'PR','BR'),
        ('Rua João Bettega', 'casa 01', '21', '81070000', 'Portão', 'Curitiba', 'PR','BR'),
        ('Rua Izaac Ferreira da Cruz', 'Loja 13', '1836', '81900000', 'Sítio Cercado', 'Curitiba', 'PR','BR'),
        ('Avenida Winston Churchill', 'Ap 13 Bloco 08', '1959', '81130-000', 'Capão Raso', 'Curitiba', 'PR','BR'),
        ('Rua Marechal Deodoro', 'Loja 01', '298', '80010970', 'Centro', 'Curitiba', 'PR','BR');
        
select*from enderecos;

INSERT INTO BIBLIOTECA.generos(genero)
	VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficcao'),
    ('Romance'),
    ('Suspense'),
    ('Terror');
    
SELECT * FROM generos;

DELETE FROM generos WHERE id_genero = 1;

INSERT INTO BIBLIOTECA.Editoras(empresa, cnpj, tel, email)
	VALUES
    ('editora Moderna', '00394460005887', '41996687651', 'editoramoderna@moderna.com.br'),
    ('editira Globo', '06991538000191', '41996687652', 'editoraglobo@globo.com.br'),
    ('editora Garamond', '01457657000145', '41996687653', 'editoragaramond@garamond.com.br'),
    ('editora Gaivota', '13206166000100', '41996687654', 'editoragaivota@gaivota.com.br'),
    ('editora Allbook', '31370479000181', '41996687655', 'allbookeditora@allbook.com.br');
    
SELECT * FROM editoras;

INSERT INTO BIBLIOTECA.Pessoas(nome, email, cpf, telefone, data_nasc)
	VALUES
    ('Lucas Silva de Castro', 'lukinha@balatensa.com.br', '123.456.789-10', '41996687651', '2009/08/01'),
    ('Evan Thomas Peters', 'tatelangdon@ahs.com.br', '111.213.141-51', '41996686661', '1987/01/20'),
    ('Min Yoon-gi', 'suga@agustd.com.br', '617.181.920-21', '41896697654', '1993/03/09'),
    ('Yuumi de Bandópolis', 'yuumi@gatamagica.com.br', '222.324.252-62', '41999199170', '2019/05/01'),
    ('Leona de Monte Targon', 'leona@amadiana.com.br', '728.293.031-32', '41886689651', '2011/07/13');
    
SELECT * FROM pessoas;

INSERT INTO BIBLIOTECA.Usuarios(senha)
	VALUES
    ('BR12345678'),
    ('EUA12345678'),
	('KR12345678'),
    ('LOL12345678'),
    ('MAIN12345678');
    
SELECT * FROM usuarios;

INSERT INTO BIBLIOTECA.Funcionarios(cargo, senha, data_adm)
	VALUES
    ('bibliotecário' 'BI12345678' '1995/02/20'),
    ('auxiliar de biblioteca' 'AUX12345678' '1995/02/21'),
    ('auxiliar administrativo' 'ADM12345678' '1995/02/22'),
    ('recepcionista' 'REC12345678' '1995/02/23'),
    ('estoquista' 'EST12345678' '1995/02/24');
    
SELECT * FROM funcionarios;

INSERT INTO BIBLIOTECA.Autores(qtd_livros)
	VALUES
    ('23'),
    ('24'),
    ('25'),
    ('26'),
    ('26');
    
SELECT * FROM autores;

INSERT INTO BIBLIOTECA.Livros(titulo, ano, edicao, editora, isbn, disponibilidade)
	VALUES
    ('As Crônicas de Nárnia', '2023', '01', 'editora Moderna', '6560050165', 'sim'),
    ('Harry Potter e o Prisioneiro de Azkaban', '2004', '02', 'editira Globo', '8532531024', 'nao'),
    ('As aventuras de Sherlock Holmes', '2019', '03', 'editora Garamond', '6560050167', 'sim'),
    ('Grimório das Bruxas', '2021', '04', 'editora Gaivota', '9786555980905', 'sim'),
    ('Violet Bent Backwards Over the Grass', '2020', '05', 'editora Allbook', '1982167289', 'nao');
    
SELECT * FROM livros;

INSERT INTO BIBLIOTECA.Emprestimos(emprestimo, devolucao)
	VALUES
    ('2023/01/12', '2023/03/12'),
	('2023/02/23', '2023/04/23'),
    ('2023/03/11', '2023/05/11'),
    ('2023/04/08', '2023/06/08'),
    ('2023/06/01', '2023/08/01');
    
SELECT * FROM emprestimos;