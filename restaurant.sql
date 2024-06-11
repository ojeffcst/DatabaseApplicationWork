CREATE DATABASE Restaurante;
USE Restaurante; 
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
