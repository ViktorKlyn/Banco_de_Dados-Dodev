-- Inserir dados na tabela "clientes"
INSERT INTO clientes (id, nome, email, telefone, endereco)
VALUES (1, 'João', 'joaoexample.com', '1234567889', 'Rua A' );

-- Inserir dados na tabela "carros"
INSERT INTO carros (id, carro_id, cliente_id, data_venda, valor)
VALUES (1, 'ABC123', 1, '2023-07-04', 25000);

-- Inserir dados na tabela "vendas"
INSERT INTO vendas (id, marca, modelo, ano, cor, preco)
VALUES (1, 'Ford', 'Fiesta', 2020, 'Prata', 15000);