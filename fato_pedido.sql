CREATE TABLE FatoPedido (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    PratoID INT,
    DataID INT,
    ValorTotal DECIMAL(10, 2),
    ValorUnitario DECIMAL(10, 2),
    Quantidade INT,
    FOREIGN KEY (ClienteID) REFERENCES DimCliente(ClienteID),
    FOREIGN KEY (PratoID) REFERENCES DimPrato(PratoID),
    FOREIGN KEY (DataID) REFERENCES DimData(DataID)
);

INSERT INTO FatoPedido (PedidoID, ClienteID, PratoID, DataID, ValorTotal, ValorUnitario, Quantidade) VALUES (1, 1, 1, 1, 50.00, 10.00, 5);
