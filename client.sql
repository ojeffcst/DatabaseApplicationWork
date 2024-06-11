CREATE TABLE DimCliente (
    ClienteID INT PRIMARY KEY,
    NomeCliente VARCHAR(255),
    EmpresaID INT
);

CREATE TABLE DimEmpresa (
    EmpresaID INT PRIMARY KEY,
    NomeEmpresa VARCHAR(255)
);

CREATE TABLE DimData (
    DataID INT PRIMARY KEY,
    Ano INT,
    Mes INT,
    Dia INT
);

CREATE TABLE DimPrato (
    PratoID INT PRIMARY KEY,
    NomePrato VARCHAR(255),
    Categoria VARCHAR(255)
);


INSERT INTO DimCliente (ClienteID, NomeCliente, EmpresaID) VALUES (1, 'João', 1);
INSERT INTO DimEmpresa (EmpresaID, NomeEmpresa) VALUES (1, 'Empresa A');
INSERT INTO DimData (DataID, Ano, Mes, Dia) VALUES (1, 2023, 6, 10);
INSERT INTO DimPrato (PratoID, NomePrato, Categoria) VALUES (1, 'Bolo de Chocolate', 'Sobremesa');

