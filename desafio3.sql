CREATE TABLE `clientes` (
  `id` INT PRIMARY KEY,
  `nome` VARCHAR(100),
  `email` VARCHAR(100),
  `telefone` VARCHAR(20),
  `endereco` VARCHAR(200)
);

CREATE TABLE `vendas` (
  `id` INT PRIMARY KEY,
  `carro_id` INT,
  `cliente_id` INT,
  `data_venda` DATE,
  `valor` DECIMAL(10,2)
);

CREATE TABLE `carros` (
  `id` INT PRIMARY KEY,
  `marca` VARCHAR(50),
  `modelo` VARCHAR(50),
  `ano` INT,
  `cor` VARCHAR(20),
  `preco` DECIMAL(10,2)
);

ALTER TABLE `vendas` ADD FOREIGN KEY (`carro_id`) REFERENCES `carros` (`id`);

ALTER TABLE `vendas` ADD FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
