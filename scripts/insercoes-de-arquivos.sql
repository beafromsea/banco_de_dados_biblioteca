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
        ('Avenida Winston Churchill', 'Ap 13 Bloco 08', '1959', '81130000', 'Capão Raso', 'Curitiba', 'PR','BR'),
        ('Rua Marechal Deodoro', 'Loja 01', '298', '80010970', 'Centro', 'Curitiba', 'PR','BR');
        
select*from enderecos;

INSERT INTO BIBLIOTECA.Generos(genero)
	VALUES
    ('Ação'),
    ('Comédia'),
    ('Drama'),
    ('Ficcao'),
    ('Romance'),
    ('Suspense'),
    ('Terror');
    
SELECT * FROM generos;

INSERT INTO BIBLIOTECA.editoras(empresa, cnpj, tel, email)
	VALUES
	('moderna', '003944679', '996687651', 'editoramoderna@moderna.com.br'),
    ('globo', '0699153800', '96687652', 'editoraglobo@globo.com.br'),
    ('garamond', '0145765700', '96687653', 'editoragaramond@garamond.com.br'),
    ('gaivota', '1320616600', '96687654', 'editoragaivota@gaivota.com.br'),
    ('allbook', '313704790', '96687655', 'allbookeditora@allbook.com.br');
    
SELECT * FROM editoras;
