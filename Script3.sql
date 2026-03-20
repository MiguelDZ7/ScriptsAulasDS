SELECT * FROM tabela_de_clientes;

SELECT CPF, NOME FROM tabela_de_clientes;

SELECT * FROM tabela_de_clientes WHERE cpf = '1471156710';

SELECT * FROM tabela_de_clientes WHERE nome = 'Petra Oliveira';

SELECT * FROM tabela_de_produtos;
SELECT * FROM tabela_de_produtos WHERE preco_de_lista > 8.41;

SELECT * FROM tabela_de_produtos WHERE preco_de_lista 
BETWEEN 8.40 AND 8.42;

SELECT * FROM tabela_de_produtos WHERE 
sabor ='Manga' OR tamanho = '350 ml';

SELECT * FROM tabela_de_produtos WHERE
sabor = 'manga' AND tamanho = '350 ml';

SELECT * FROM tabela_de_produtos WHERE
NOT (sabor = 'manga' AND tamanho = '350 ml');

SELECT * FROM tabela_de_produtos WHERE
NOT (sabor = 'manga' OR tamanho = '350 ml');





