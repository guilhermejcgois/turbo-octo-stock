CREATE SCHEMA bdEstoque;

/* ==================== tabCategoria ==================== */

CREATE TABLE bdEstoque.tabCategoria (
    cod_categoria   serial      NOT NULL,
    nome_categoria  varchar(30) NOT NULL
);

ALTER TABLE bdEstoque.tabCategoria ADD CONSTRAINT pk_tabCategoria PRIMARY KEY (cod_categoria);

ALTER TABLE bdEstoque.tabCategoria ADD CONSTRAINT ck_tabCategoria_nome_categoria UNIQUE (nome_categoria);

/* ==================== tabFornecedor ==================== */

CREATE TABLE bdEstoque.tabFornecedor (
    cod_fornecedor  serial      NOT NULL,
    nome_fornecedor varchar(30) NOT NULL
);

ALTER TABLE bdEstoque.tabFornecedor ADD CONSTRAINT pk_tabFornecedor PRIMARY KEY (cod_fornecedor);

ALTER TABLE bdEstoque.tabFornecedor ADD CONSTRAINT ck_tabFornecedor_nome_fornecedor UNIQUE (nome_fornecedor);

/* ==================== tabPeca ==================== */

CREATE TABLE bdEstoque.tabPeca (
    codigo          serial          NOT NULL,
    nome            varchar(30)     NOT NULL,
    cod_fornecedor  int             NOT NULL,
    descricao       varchar(50)     NOT NULL,
    valor           numeric         NOT NULL,
    peso            decimal(3,3)        NULL,
    dimensao        decimal(3,1)        NULL,
    cod_categoria   int             NOT NULL,
    imagem          varchar(100)        NULL,
    qtd_estoque     int             NOT NULL
);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT pk_tabPeca PRIMARY KEY (codigo);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT fk_tabPeca_tabFornecedor FOREIGN KEY (cod_fornecedor) REFERENCES bdEstoque.tabFornecedor(cod_fornecedor);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT fk_tabPeca_tabCategoria FOREIGN KEY (cod_categoria) REFERENCES bdEstoque.tabCategoria(cod_categoria);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT valor_tabPeca_positivo CHECK (valor > 0);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT dimensao_tabPeca_positiva CHECK (dimensao > 0);

ALTER TABLE bdEstoque.tabPeca ADD CONSTRAINT qtd_estoque_tabPeca_nao_negativa CHECK (qtd_estoque >= 0);

/* ==================== tabCliente ==================== */

CREATE TABLE bdEstoque.tabCliente (
    cpf     varchar(11) NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE bdEstoque.tabCliente ADD CONSTRAINT pk_tabCliente PRIMARY KEY (cpf);

/* ==================== tabModelo ==================== */

CREATE TABLE bdEstoque.tabModelo (
    cod_modelo  serial      NOT NULL,
    nome        varchar(30) NOT NULL,
    versao      varchar(30) NOT NULL
);

ALTER TABLE bdEstoque.tabModelo ADD CONSTRAINT pk_tabModelo PRIMARY KEY (cod_modelo);

/* ==================== tabVeiculo ==================== */

CREATE TABLE bdEstoque.tabVeiculo (
    codigo      serial  NOT NULL,
    cod_modelo  int     NOT NULL,
    ano         int     NOT NULL
);

ALTER TABLE bdEstoque.tabVeiculo ADD CONSTRAINT pk_tabVeiculo PRIMARY KEY (codigo);

ALTER TABLE bdEstoque.tabVeiculo ADD CONSTRAINT fk_tabVeiculo_tabModelo FOREIGN KEY (cod_modelo) REFERENCES bdEstoque.tabModelo(cod_modelo);

/* ==================== tabCarro ==================== */

CREATE TABLE bdEstoque.tabCarro (
    placa       varchar(7)  NOT NULL,
    cpf_cliente varchar(11) NOT NULL,
    cod_veiculo int         NOT NULL
);

ALTER TABLE bdEstoque.tabCarro ADD CONSTRAINT pk_tabCarro PRIMARY KEY (placa);

ALTER TABLE bdEstoque.tabCarro ADD CONSTRAINT fk_tabCarro_tabCliente FOREIGN KEY (cpf_cliente) REFERENCES bdEstoque.tabCliente(cpf);

ALTER TABLE bdEstoque.tabCarro ADD CONSTRAINT fk_tabCarro_tabVeiculo FOREIGN KEY (cod_veiculo) REFERENCES bdEstoque.tabVeiculo(codigo);

/* ==================== tabCompativel ==================== */

CREATE TABLE bdEstoque.tabCompativel (
    cod_peca    int         NOT NULL,
    cod_carro   varchar(7)  NOT NULL
);

ALTER TABLE bdEstoque.tabCompativel ADD CONSTRAINT pk_tabCompativel PRIMARY KEY (cod_peca, cod_carro);

ALTER TABLE bdEstoque.tabCompativel ADD CONSTRAINT fk_tabCompativel_tabPeca FOREIGN KEY (cod_peca) REFERENCES bdEstoque.tabPeca(codigo);

ALTER TABLE bdEstoque.tabCompativel ADD CONSTRAINT fk_tabCompativel_tabCarro FOREIGN KEY (cod_carro) REFERENCES bdEstoque.tabCarro(placa);

/* ==================== tabFuncionarioCadastro ==================== */

CREATE TABLE bdEstoque.tabFuncionarioCadastro (
    cpf     varchar(11) NOT NULL,
    nome    varchar(30) NOT NULL
);

ALTER TABLE bdEstoque.tabFuncionarioCadastro ADD CONSTRAINT pk_tabFuncionarioCadastro PRIMARY KEY (cpf);

/* ==================== tabFuncionarioAcesso ==================== */

CREATE TABLE bdEstoque.tabFuncionarioAcesso (
    login   varchar(10) NOT NULL,
    senha   varchar(15) NOT NULL
);

ALTER TABLE bdEstoque.tabFuncionarioAcesso ADD CONSTRAINT pk_tabFuncionarioAcesso PRIMARY KEY (login);

/* ==================== tabFuncionario ==================== */

CREATE TABLE bdEstoque.tabFuncionario (
    cpf     varchar(11) NOT NULL,
    login   varchar(10) NOT NULL
);

ALTER TABLE bdEstoque.tabFuncionario ADD CONSTRAINT pk_tabFuncionario PRIMARY KEY (cpf, login);

ALTER TABLE bdEstoque.tabFuncionario ADD CONSTRAINT fk_tabFuncionario_tabFuncionarioCadastro FOREIGN KEY (cpf) REFERENCES bdEstoque.tabFuncionarioCadastro(cpf);

ALTER TABLE bdEstoque.tabFuncionario ADD CONSTRAINT fk_tabFuncionario_tabFuncionarioAcesso FOREIGN KEY (login) REFERENCES bdEstoque.tabFuncionarioAcesso(login);

/* ==================== tabEntradaEstoque ==================== */

CREATE TABLE bdEstoque.tabEntradaEstoque (
    cpf_funcionario varchar(11) NOT NULL,
    cod_peca        int         NOT NULL,
    data_entrada    date        NOT NULL,
    hora_entrada    time        NOT NULL,
    qtd             int         NOT NULL
);

ALTER TABLE bdEstoque.tabEntradaEstoque ADD CONSTRAINT pk_tabEntradaEstoque PRIMARY KEY (cpf_funcionario, cod_peca, data_entrada);

ALTER TABLE bdEstoque.tabEntradaEstoque ADD CONSTRAINT fk_tabEntradaEstoque_tabFuncionario FOREIGN KEY (cpf_funcionario) REFERENCES bdEstoque.tabFuncionarioCadastro(cpf);

ALTER TABLE bdEstoque.tabEntradaEstoque ADD CONSTRAINT fk_tabEntradaEstoque_tabPeca FOREIGN KEY (cod_peca) REFERENCES bdEstoque.tabPeca(codigo);

ALTER TABLE bdEstoque.tabEntradaEstoque ADD CONSTRAINT qtd_tabEntradaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== tabBaixaEstoque ==================== */

CREATE TABLE bdEstoque.tabBaixaEstoque (
    cpf_funcionario varchar(11) NOT NULL,
    cod_peca        int         NOT NULL,
    placa_carro     varchar(7)  NOT NULL,
    data_baixa      date        NOT NULL,
    hora_baixa      time        NOT NULL,
    qtd             int
);

ALTER TABLE bdEstoque.tabBaixaEstoque ADD CONSTRAINT pk_tabBaixaEstoque PRIMARY KEY (data_baixa, hora_baixa);

ALTER TABLE bdEstoque.tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabFuncionario FOREIGN KEY (cpf_funcionario) REFERENCES bdEstoque.tabFuncionarioCadastro(cpf);

ALTER TABLE bdEstoque.tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabPeca FOREIGN KEY (cod_peca) REFERENCES bdEstoque.tabPeca(codigo);

ALTER TABLE bdEstoque.tabBaixaEstoque ADD CONSTRAINT fk_tabBaixaEstoque_tabCarro FOREIGN KEY (placa_carro) REFERENCES bdEstoque.tabCarro(placa);

ALTER TABLE bdEstoque.tabBaixaEstoque ADD CONSTRAINT qtd_tabBaixaEstoque_nao_negativa CHECK (qtd >= 0);

/* ==================== tabPecaCarro ==================== */

CREATE TABLE bdEstoque.tabPecaCarro (
    placa_carro varchar(7)  NOT NULL,
    data_baixa  date        NOT NULL,
    hora_baixa  time        NOT NULL
);

ALTER TABLE bdEstoque.tabPecaCarro ADD CONSTRAINT pk_tabPecaCarro PRIMARY KEY (placa_carro, data_baixa, hora_baixa);

ALTER TABLE bdEstoque.tabPecaCarro ADD CONSTRAINT fk_tabPecaCarro_tabCarro FOREIGN KEY (placa_carro) REFERENCES bdEstoque.tabCarro(placa);

ALTER TABLE bdEstoque.tabPecaCarro ADD CONSTRAINT fk_tabPecaCarro_tabBaixaEstoque FOREIGN KEY (data_baixa, hora_baixa) REFERENCES bdEstoque.tabBaixaEstoque(data_baixa, hora_baixa);

