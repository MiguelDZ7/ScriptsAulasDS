CREATE SCHEMA sucos_vendas;
use sucos_vendas;

SELECT * FROM 
tabela_de_produtos;

SELECT * FROM tabela_de_produtos 
WHERE codigo_do_produto = '1096818';

SELECT * FROM tabela_de_produtos 
WHERE nome_do_produto = 'Linha Refrescante - 700 ml - Manga';

SELECT preco_de_lista from tabela_de_produtos
WHERE preco_de_lista BETWEEN 10.4 AND 10.6;

SELECT * FROM tabela_de_produtos
WHERE sabor = 'Manga' OR sabor = 'Abacaxi';

SELECT * FROM tabela_de_produtos
WHERE sabor = 'Manga' AND tamanho = '3 ml'; 

SELECT * FROM tabela_de_produtos 
WHERE sabor = 'manga' OR NOT (tamanho = '470 ml');

SELECT * FROM tabela_de_produtos WHERE 
sabor IN ('Manga', 'Laranja');

SELECT cidade, idade FROM tabela_de_clientes
WHERE cidade IN ('Rio de Janeiro', 'São Paulo')
AND idade >= 20;