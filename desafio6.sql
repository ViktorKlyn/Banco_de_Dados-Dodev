-- Inserir dados na tabela "clientes"
INSERT INTO clientes (id, nome, email, telefone, endereco)
VALUES (1, 'João', 'joaoexample.com', '1234567889', 'Rua A' );

-- Inserir dados na tabela "carros"
INSERT INTO carros (id, carro_id, cliente_id, data_venda, valor)
VALUES (1, 'ABC123', 1, '2023-07-04', 25000);

-- Inserir dados na tabela "vendas"
INSERT INTO vendas (id, marca, modelo, ano, cor, preco)
VALUES (1, 'Ford', 'Fiesta', 2020, 'Prata', 15000);

UPDATE vendas 
SET valor = 45000.00
WHERE id = 1;

SELECTS c.nomes AS nome_cliente, ca.marca, ca.modelo, v.valor
FROM vendas v
JOIN carros ca ON v.carro_id = ca.id
JOIN clientes c ON v.cliente_id = c.id
WHERE v.id = 1;