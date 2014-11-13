/* ==================== tabPecaCarro ==================== */

ALTER TABLE bdEstoque.tabPecaCarro DROP CONSTRAINT IF EXISTS  fk_tabPecaCarro_tabBaixaEstoque;

ALTER TABLE bdEstoque.tabPecaCarro DROP CONSTRAINT IF EXISTS  fk_tabPecaCarro_tabCarro;

ALTER TABLE bdEstoque.tabPecaCarro DROP CONSTRAINT IF EXISTS  pk_tabPecaCarro;
    
DROP TABLE IF EXISTS bdEstoque.tabPecaCarro;

/* ==================== tabBaixaEstoque ==================== */

ALTER TABLE bdEstoque.tabBaixaEstoque DROP CONSTRAINT IF EXISTS  qtd_tabBaixaEstoque_nao_negativa;

ALTER TABLE bdEstoque.tabBaixaEstoque DROP CONSTRAINT IF EXISTS  fk_tabBaixaEstoque_tabCarro;

ALTER TABLE bdEstoque.tabBaixaEstoque DROP CONSTRAINT IF EXISTS  fk_tabBaixaEstoque_tabPeca;

ALTER TABLE bdEstoque.tabBaixaEstoque DROP CONSTRAINT IF EXISTS  fk_tabBaixaEstoque_tabFuncionario;

ALTER TABLE bdEstoque.tabBaixaEstoque DROP CONSTRAINT IF EXISTS  pk_tabBaixaEstoque;

DROP TABLE IF EXISTS bdEstoque.tabBaixaEstoque;

/* ==================== tabEntradaEstoque ==================== */

ALTER TABLE bdEstoque.tabEntradaEstoque DROP CONSTRAINT IF EXISTS  qtd_tabEntradaEstoque_nao_negativa;

ALTER TABLE bdEstoque.tabEntradaEstoque DROP CONSTRAINT IF EXISTS  fk_tabEntradaEstoque_tabPeca;

ALTER TABLE bdEstoque.tabEntradaEstoque DROP CONSTRAINT IF EXISTS  fk_tabEntradaEstoque_tabFuncionario;

ALTER TABLE bdEstoque.tabEntradaEstoque DROP CONSTRAINT IF EXISTS  pk_tabEntradaEstoque;

DROP TABLE IF EXISTS bdEstoque.tabEntradaEstoque;

/* ==================== tabFuncionario ==================== */

ALTER TABLE bdEstoque.tabFuncionario DROP CONSTRAINT IF EXISTS  fk_tabFuncionario_tabFuncionarioCadastro;

ALTER TABLE bdEstoque.tabFuncionario DROP CONSTRAINT IF EXISTS  fk_tabFuncionario_tabFuncionarioAcesso;

ALTER TABLE bdEstoque.tabFuncionario DROP CONSTRAINT IF EXISTS  pk_tabFuncionario;

DROP TABLE IF EXISTS bdEstoque.tabFuncionario;

/* ==================== tabFuncionarioAcesso ==================== */

ALTER TABLE bdEstoque.tabFuncionarioAcesso DROP CONSTRAINT IF EXISTS  pk_tabFuncionarioAcesso;

DROP TABLE IF EXISTS bdEstoque.tabFuncionarioAcesso;

/* ==================== tabFuncionarioCadastro ==================== */

ALTER TABLE bdEstoque.tabFuncionarioCadastro DROP CONSTRAINT IF EXISTS  pk_tabFuncionarioCadastro;

DROP TABLE IF EXISTS bdEstoque.tabFuncionarioCadastro;

/* ==================== tabCompativel ==================== */

ALTER TABLE bdEstoque.tabCompativel DROP CONSTRAINT IF EXISTS  fk_tabCompativel_tabCarro;

ALTER TABLE bdEstoque.tabCompativel DROP CONSTRAINT IF EXISTS  fk_tabCompativel_tabPeca;

ALTER TABLE bdEstoque.tabCompativel DROP CONSTRAINT IF EXISTS  pk_tabCompativel;

DROP TABLE IF EXISTS bdEstoque.tabCompativel;

/* ==================== tabCarro ==================== */

ALTER TABLE bdEstoque.tabCarro DROP CONSTRAINT IF EXISTS  fk_tabCarro_tabVeiculo;

ALTER TABLE bdEstoque.tabCarro DROP CONSTRAINT IF EXISTS  fk_tabCarro_tabCliente;

ALTER TABLE bdEstoque.tabCarro DROP CONSTRAINT IF EXISTS  pk_tabCarro;

DROP TABLE IF EXISTS bdEstoque.tabCarro;

/* ==================== tabVeiculo ==================== */

ALTER TABLE bdEstoque.tabVeiculo DROP CONSTRAINT IF EXISTS  fk_tabVeiculo_tabModelo;

ALTER TABLE bdEstoque.tabVeiculo DROP CONSTRAINT IF EXISTS  pk_tabVeiculo;

DROP TABLE IF EXISTS bdEstoque.tabVeiculo;

/* ==================== tabModelo ==================== */

ALTER TABLE bdEstoque.tabModelo DROP CONSTRAINT IF EXISTS  pk_tabModelo;

DROP TABLE IF EXISTS bdEstoque.tabModelo ;

/* ==================== tabCliente ==================== */

ALTER TABLE bdEstoque.tabCliente DROP CONSTRAINT IF EXISTS  pk_tabCliente;

DROP TABLE IF EXISTS bdEstoque.tabCliente;

/* ==================== tabPeca ==================== */

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  qtd_estoque_tabPeca_nao_negativa;

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  dimensao_tabPeca_positiva;

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  valor_tabPeca_positivo;

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  fk_tabPeca_tabCategoria;

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  fk_tabPeca_tabFornecedor;

ALTER TABLE bdEstoque.tabPeca DROP CONSTRAINT IF EXISTS  pk_tabPeca;

DROP TABLE IF EXISTS bdEstoque.tabPeca;

/* ==================== tabFornecedor ==================== */

ALTER TABLE bdEstoque.tabFornecedor DROP CONSTRAINT IF EXISTS  ck_tabFornecedor_nome_fornecedor;

ALTER TABLE bdEstoque.tabFornecedor DROP CONSTRAINT IF EXISTS  pk_tabFornecedor;

DROP TABLE IF EXISTS bdEstoque.tabFornecedor;

/* ==================== tabCategoria ==================== */

ALTER TABLE bdEstoque.tabCategoria DROP CONSTRAINT IF EXISTS  ck_tabCategoria_nome_categoria;

ALTER TABLE bdEstoque.tabCategoria DROP CONSTRAINT IF EXISTS  pk_tabCategoria;

DROP TABLE IF EXISTS bdEstoque.tabCategoria;



DROP SCHEMA IF EXISTS bdEstoque;