CREATE DATABASE bdEstoque;

/* USE DATABASE bdEstoque; */

/* ==================== Categoria ==================== */

CREATE TABLE Categoria (
    cod_categoria   int         NOT NULL,
    nome_categoria  varchar(30) NOT NULL
);

ALTER TABLE Categoria ADD CONSTRAINT pk_categoria PRIMARY KEY (cod_categoria);

ALTER TABLE Categoria ADD CONSTRAINT ck_categoria_nome_cateria UNIQUE;

/* ==================== Fornecedor ==================== */

CREATE TABLE Fornecedor (
    cod_fornecedor  int         NOT NULL,
    nome_fornecedor varchar(30) NOT NULL
);

ALTER TABLE Fornecedor ADD CONSTRAINT pk_fornecedor PRIMARY KEY (cod_fornecedor);

ALTER TABLE Fornecedor ADD CONSTRAINT ck_fornecedor_nome_fornecedor UNIQUE;

/* ==================== Peca ==================== */

CREATE TABLE Peca (
    codigo          int             NOT NULL,
    nome            varchar(30)     NOT NULL,
    cod_fornecedor  int             NOT NULL,
    descricao       varchar(50)     NOT NULL,
    valor           money           NOT NULL,
    peso            decimal(3,3)        NULL,
    dimensao        decimal(3,1)        NULL,
    cod_categoria   int             NOT NULL,
    imagem          varchar(100)        NULL,
    qtd_estoque     int             NOT NULL
);

ALTER TABLE Peca ADD CONSTRAINT pk_peca PRIMARY KEY (codigo);

ALTER TABLE Peca ADD CONSTRAINT fk_peca_fornecedor FOREIGN KEY (cod_fornecedor) REFERENCES Fornecedor(cod_fornecedor);

ALTER TABLE Peca ADD CONSTRAINT fk_peca_categoria FOREIGN KEY (cod_categoria) REFERENCES Categoria(cod_categoria);

ALTER TABLE Peca ADD CONSTRAINT valor_peca_positivo CHECK (valor > 0);

ALTER TABLE Peca ADD CONSTRAINT dimensao_peca_positiva CHECK (dimensao > 0);

ALTER TABLE Peca ADD CONSTRAINT qtd_estoque_peca_nao_negativa CHECK (qtd_estoque >= 0);

/* ==================== Cliente ==================== */

CREATE TABLE Cliente (
    CPF     int         NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE Cliente ADD CONSTRAINT pk_cliente PRIMARY KEY (CPF);

/* ==================== Modelo ==================== */

CREATE TABLE Modelo (
    cod_modelo  int         NOT NULL,
    nome        varchar(30) NOT NULL,
    versao      varchar(30) NOT NULL
);

ALTER TABLE Modelo ADD CONSTRAINT pk_Modelo PRIMARY KEY (cod_modelo);

/* ==================== Veiculo ==================== */

CREATE TABLE Veiculo (
    codigo      int NOT NULL,
    cod_modelo  int NOT NULL,
    ano         int NOT NULL
);

ALTER TABLE Veiculo ADD CONSTRAINT pk_veiculo PRIMARY KEY (codigo);

ALTER TABLE Veiculo ADD CONSTRAINT fk_veiculo_modelo FOREIGN KEY (cod_modelo) REFERENCES Modelo(cod_modelo);

/* ==================== Carro ==================== */

CREATE TABLE Carro (
    placa       varchar(7)  NOT NULL,
    cpf_cliente int         NOT NULL,
    cod_veiculo int         NOT NULL
);

ALTER TABLE Carro ADD CONSTRAINT pk_carro PRIMARY KEY (placa);

ALTER TABLE Carro ADD CONSTRAINT fk_carro_cliente FOREIGN KEY (cpf_cliente) REFERENCES Cliente(CPF);

ALTER TABLE Carro ADD CONSTRAINT fk_carro_veiculo FOREIGN KEY (cod_carro) REFERENCES Veiculo(codigo);

/* ==================== Compativel ==================== */

CREATE TABLE Compativel (
    cod_peca    int         NOT NULL,
    cod_carro   varchar(7)  NOT NULL
);

ALTER TABLE Compativel ADD CONSTRAINT pk_compativel PRIMARY KEY (cod_peca, cod_carro);

ALTER TABLE Compativel ADD CONSTRAINT fk_compativel_peca FOREIGN KEY (cod_peca) REFERENCES Peca(codigo);

ALTER TABLE Compativel ADD CONSTRAINT fk_compativel_carro FOREIGN KEY (cod_carro) REFERENCES Carro(placa);

/* ==================== FuncionarioCadastro ==================== */

CREATE TABLE FuncionarioCadastro (
    CPF     int         NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE FuncionarioCadastro ADD CONSTRAINT pk_funcionarioCadastro PRIMARY KEY (CPF);

/* ==================== FuncionarioAcesso ==================== */

CREATE TABLE FuncionarioAcesso (
    login   varchar(10) NOT NULL,
    senha   varchar(15) NOT NULL
);

ALTER TABLE FuncionarioAcesso ADD CONSTRAINT pk_funcionarioAcesso PRIMARY KEY (lofin);

/* ==================== Funcionario ==================== */

CREATE TABLE Funcionario (
    CPF     int         NOT NULL,
    login   varchar(10) NOT NULL
);

ALTER TABLE Funcionario ADD CONSTRAINT pk_funcionario PRIMARY KEY (CPF, login);

/* ==================== EntradaEstoque ==================== */

CREATE TABLE EntradaEstoque (
    CPF_funcionario int     NOT NULL,
    cod_peca        int     NOT NULL,
    data            date    NOT NULL,
    hora            time,
    qtd             int
);

ALTER TABLE EntradaEstoque ADD CONSTRAINT pk_entradaEstoque PRIMARY KEY (CPF_funcionario, cod_peca, data);

ALTER TABLE EntradaEstoque ADD CONSTRAINT fk_entradaEstoque_funcionario FOREIGN KEY (CPF_funcionario) REFERENCES Funcionario(CPF);

ALTER TABLE EntradaEstoque ADD CONSTRAINT fk_entradaEstoque_peca FOREIGN KEY (cod_peca) REFERENCES Peca(codigo);

ALTER TABLE EntradaEstoque ADD CONSTRAINT qtd_entradaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== BaixaEstoque ==================== */

CREATE TABLE BaixaEstoque (
    CPF_funcionario int         NOT NULL,
    cod_peca        int         NOT NULL,
    placa_carro     varchar(7)  NOT NULL,
    data            date        NOT NULL,
    hora            time        NOT NULL,
    qtd             int
);

ALTER TABLE BaixaEstoque ADD CONSTRAINT pk_baixaEstoque PRIMARY KEY (CPF_funcionario, cod_peca, placa_carro, data, hora);

ALTER TABLE BaixaEstoque ADD CONSTRAINT fk_baixaEstoque_funcionario FOREIGN KEY (CPF_funcionario) REFERENCES Funcionario(CPF);

ALTER TABLE BaixaEstoque ADD CONSTRAINT fk_baixaEstoque_peca FOREIGN KEY (cod_peca) REFERENCES Peca(codigo);

ALTER TABLE BaixaEstoque ADD CONSTRAINT fk_baixaEstoque_carro FOREIGN KEY (placa_carro) REFERENCES Carro(placa);

ALTER TABLE BaixaEstoque ADD CONSTRAINT qtd_entradaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== PecaCarro ==================== */

CREATE TABLE PecaCarro (
    placa_carro varchar(7)  NOT NULL,
    data_baixa  date        NOT NULL,
    hora_baixa  date        NOT NULL
);

ALTER TABLE PecaCarro ADD CONSTRAINT pk_pecaCarro PRIMARY KEY (placa_carro, data_baixa, hora_baixa);

ALTER TABLE PecaCarro ADD CONSTRAINT fk_pecaCarro_carro FOREIGN KEY placa_carro REFERENCES Carro(placa);

ALTER TABLE PecaCarro ADD CONSTRAINT fk_pecaCarro_baixaEstoque FOREIGN KEY (data_baixa, hora_baixa) REFERENCES BaixaEstoque(data, hora);

