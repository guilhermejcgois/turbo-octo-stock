CREATE DATABASE bdEstoque;

/* USE DATABASE bdEstoque; */

/* ==================== tabCategoria ==================== */

CREATE TABLE tabCategoria (
    cod_categoria   int         NOT NULL,
    nome_categoria  varchar(30) NOT NULL
);

ALTER TABLE tabCategoria ADD CONSTRAINT pk_tabCategoria PRIMARY KEY (cod_categoria);

ALTER TABLE tabCategoria ADD CONSTRAINT ck_tabCategoria_nome_categoria UNIQUE;

/* ==================== tabFornecedor ==================== */

CREATE TABLE tabFornecedor (
    cod_fornecedor  int         NOT NULL,
    nome_fornecedor varchar(30) NOT NULL
);

ALTER TABLE tabFornecedor ADD CONSTRAINT pk_tabFornecedor PRIMARY KEY (cod_fornecedor);

ALTER TABLE tabFornecedor ADD CONSTRAINT ck_tabFornecedor_nome_fornecedor UNIQUE;

/* ==================== tabPeca ==================== */

CREATE TABLE tabPeca (
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

ALTER TABLE tabPeca ADD CONSTRAINT pk_tabPeca PRIMARY KEY (codigo);

ALTER TABLE tabPeca ADD CONSTRAINT fk_tabPeca_tabFornecedor FOREIGN KEY (cod_fornecedor) REFERENCES tabFornecedor(cod_fornecedor);

ALTER TABLE tabPeca ADD CONSTRAINT fk_tabPeca_tabCategoria FOREIGN KEY (cod_categoria) REFERENCES tabCategoria(cod_categoria);

ALTER TABLE tabPeca ADD CONSTRAINT valor_tabPeca_positivo CHECK (valor > 0);

ALTER TABLE tabPeca ADD CONSTRAINT dimensao_tabPeca_positiva CHECK (dimensao > 0);

ALTER TABLE tabPeca ADD CONSTRAINT qtd_estoque_tabPeca_nao_negativa CHECK (qtd_estoque >= 0);

/* ==================== tabCliente ==================== */

CREATE TABLE tabCliente (
    cpf     int         NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE tabCliente ADD CONSTRAINT pk_tabCliente PRIMARY KEY (cpf);

/* ==================== tabModelo ==================== */

CREATE TABLE tabModelo (
    cod_modelo  int         NOT NULL,
    nome        varchar(30) NOT NULL,
    versao      varchar(30) NOT NULL
);

ALTER TABLE tabModelo ADD CONSTRAINT pk_tabModelo PRIMARY KEY (cod_modelo);

/* ==================== tabVeiculo ==================== */

CREATE TABLE tabVeiculo (
    codigo      int NOT NULL,
    cod_modelo  int NOT NULL,
    ano         int NOT NULL
);

ALTER TABLE tabVeiculo ADD CONSTRAINT pk_tabVeiculo PRIMARY KEY (codigo);

ALTER TABLE tabVeiculo ADD CONSTRAINT fk_tabVeiculo_tabModelo FOREIGN KEY (cod_modelo) REFERENCES tabModelo(cod_modelo);

/* ==================== tabCarro ==================== */

CREATE TABLE tabCarro (
    placa       varchar(7)  NOT NULL,
    cpf_cliente int         NOT NULL,
    cod_veiculo int         NOT NULL
);

ALTER TABLE tabCarro ADD CONSTRAINT pk_tabCarro PRIMARY KEY (placa);

ALTER TABLE tabCarro ADD CONSTRAINT fk_tabCarro_tabCliente FOREIGN KEY (cpf_cliente) REFERENCES tabCliente(cpf);

ALTER TABLE tabCarro ADD CONSTRAINT fk_tabCarro_tabVeiculo FOREIGN KEY (cod_carro) REFERENCES tabVeiculo(codigo);

/* ==================== tabCompativel ==================== */

CREATE TABLE tabCompativel (
    cod_peca    int         NOT NULL,
    cod_carro   varchar(7)  NOT NULL
);

ALTER TABLE Compativel ADD CONSTRAINT pk_tabCompativel PRIMARY KEY (cod_peca, cod_carro);

ALTER TABLE Compativel ADD CONSTRAINT fk_tabCompativel_tabPeca FOREIGN KEY (cod_peca) REFERENCES tabPeca(codigo);

ALTER TABLE Compativel ADD CONSTRAINT fk_tabCompativel_tabCarro FOREIGN KEY (cod_carro) REFERENCES tabCarro(placa);

/* ==================== tabFuncionarioCadastro ==================== */

CREATE TABLE tabFuncionarioCadastro (
    cpf     int         NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE tabFuncionarioCadastro ADD CONSTRAINT pk_tabFuncionarioCadastro PRIMARY KEY (cpf);

/* ==================== tabFuncionarioAcesso ==================== */

CREATE TABLE tabFuncionarioAcesso (
    login   varchar(10) NOT NULL,
    senha   varchar(15) NOT NULL
);

ALTER TABLE tabFuncionarioAcesso ADD CONSTRAINT pk_tabFuncionarioAcesso PRIMARY KEY (lofin);

/* ==================== tabFuncionario ==================== */

CREATE TABLE tabFuncionario (
    CPF     int         NOT NULL,
    login   varchar(10) NOT NULL
);

ALTER TABLE tabFuncionario ADD CONSTRAINT pk_tabFuncionario PRIMARY KEY (cpf, login);

ALTER TABLE tabFuncionario ADD CONSTRAINT fk_tabFuncionario_tabFuncionarioCadastro FOREIGN KEY (cpf) REFERENCES tabFuncionarioCadastro(cpf);

ALTER TABLE tabFuncionario ADD CONSTRAINT fk_tabFuncionario_tabFuncionarioAcesso FOREIGN KEY (login) REFERENCES tabFuncionario(login);

/* ==================== tabEntradaEstoque ==================== */

CREATE TABLE tabEntradaEstoque (
    cpf_funcionario int     NOT NULL,
    cod_peca        int     NOT NULL,
    data            date    NOT NULL,
    hora            time    NOT NULL,
    qtd             int     NOT NULL
);

ALTER TABLE tabEntradaEstoque ADD CONSTRAINT pk_tabEntradaEstoque PRIMARY KEY (cpf_funcionario, cod_peca, data);

ALTER TABLE tabEntradaEstoque ADD CONSTRAINT fk_tabEntradaEstoque_tabFuncionario FOREIGN KEY (cpf_funcionario) REFERENCES tabFuncionario(cpf);

ALTER TABLE tabEntradaEstoque ADD CONSTRAINT fk_tabEntradaEstoque_tabPeca FOREIGN KEY (cod_peca) REFERENCES tabPeca(codigo);

ALTER TABLE tabEntradaEstoque ADD CONSTRAINT qtd_tabEntradaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== tabBaixaEstoque ==================== */

CREATE TABLE tabBaixaEstoque (
    cpf_funcionario int         NOT NULL,
    cod_peca        int         NOT NULL,
    placa_carro     varchar(7)  NOT NULL,
    data            date        NOT NULL,
    hora            time        NOT NULL,
    qtd             int
);

ALTER TABLE tabBaixaEstoque ADD CONSTRAINT pk_tabBaixaEstoque PRIMARY KEY (cpf_funcionario, cod_peca, placa_carro, data, hora);

ALTER TABLE tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabFuncionario FOREIGN KEY (cpf_funcionario) REFERENCES tabFuncionario(CPF);

ALTER TABLE tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabPeca FOREIGN KEY (cod_peca) REFERENCES tabPeca(codigo);

ALTER TABLE tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabCarro FOREIGN KEY (placa_carro) REFERENCES tabCarro(placa);

ALTER TABLE tabBaixaEstoque ADD CONSTRAINT qtd_tabBaixaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== tabPecaCarro ==================== */

CREATE TABLE tabPecaCarro (
    placa_carro varchar(7)  NOT NULL,
    data_baixa  date        NOT NULL,
    hora_baixa  date        NOT NULL
);

ALTER TABLE tabPecaCarro ADD CONSTRAINT pk_tabPecaCarro PRIMARY KEY (placa_carro, data_baixa, hora_baixa);

ALTER TABLE tabPecaCarro ADD CONSTRAINT fk_tabPecaCarro_tabCarro FOREIGN KEY placa_carro REFERENCES tabCarro(placa);

ALTER TABLE tabPecaCarro ADD CONSTRAINT fk_tabPecaCarro_tabBaixaEstoque FOREIGN KEY (data_baixa, hora_baixa) REFERENCES tabBaixaEstoque(data, hora);

