Table Produtos {
    ID INT [pk]
    Nome VARCHAR
    Preco DECIMAL
    Categoria VARCHAR
}

Table Vendas {
    ID INT [pk]
    ClienteID INT [ref: > Clientes.ID]
    ProdutoID INT [ref: > Produtos.ID]
    Quantidade INT
    Data DATE
}

Table Clientes {
    ID INT [pk]
    Nome VARCHAR
    Email VARCHAR
}


// CRIAÇÃO
CREATE TABLE Produtos (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Preco DECIMAL,
    Categoria VARCHAR
);

CREATE TABLE Clientes (
    ID SERIAL PRIMARY KEY,
    Nome VARCHAR,
    Email VARCHAR
)

CREATE TABLE Vendas (
    ID SERIAL PRIMARY KEY,
    ClienteID INT,
    ProdutoID INT,
    Quantidade INT,
    Data DATE,
    FOREING KEY (ClienteID) REFERENCES Clientes (ID),
    FOREING KEY (ProdutoID) REFERENCES Produtos (ID)
);


// CONSULTA

-Contagem de Categorias(Produtos)-

SELECT Categoria, COUNT(*) AS Contagem
FROM Produtos
GROUP BY Categoria
ORDER BY Contagem ASC;

-Contagem de Produtos(Vendas)-

SELECT ProdutoID, COUNT(*) AS Contagem
FROM Vendas
GROUP BY ProdutosID
ORDER BY Contagem DESC;

-Informações Complementares-

SELECT c.Nome AS NomeCliente, P.Nome AS NomeProduto, V.Quantidade
FROM Vendas V
JOIN Clientes C ON V.ClienteID = C.ID
JOIN Produtos P ON V.ProdutoID = P.ID;