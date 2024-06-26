CREATE TABLE vendas (
    id SERIAL PRIMARY KEY,
    carro_id INT REFERENCES carros(id),
    cliente_id INT REFERENCES clientes(id),
    data_venda DATE,
    valor DECIMAL(10, 2)
);

CREATE TABLE carros (
    id SERIAL PRIMARY KEY,
    marca VARCHAR(50),
    modelo VARCHAR(50);
    ano INT,
    cor VARCHAR(20),
    preco DECIMAL(10, 2)
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);

ALTER TABLE carros
RENAME COLUMN cor TO cor_exterior;

DROP TABLE clientes;

// As alterações podem ser feitas em qualquer tabela/dado