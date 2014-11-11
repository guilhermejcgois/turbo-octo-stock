CREATE TABLE PecaCarro (
    placa_carro varchar(7)  NOT NULL,
    data_baixa  date        NOT NULL,
    hora_baixa  date        NOT NULL
);

ALTER TABLE PecaCarro ADD CONSTRAINT pk_pecaCarro PRIMARY KEY (placa_carro, data_baixa, hora_baixa);

ALTER TABLE PecaCarro ADD CONSTRAINT fk_pecaCarro_carro FOREIGN KEY placa_carro REFERENCES Carro(placa);

ALTER TABLE PecaCarro ADD CONSTRAINT fk_pecaCarro_baixaEstoque FOREIGN KEY (data_baixa, hora_baixa) REFERENCES BaixaEstoque(data, hora);
