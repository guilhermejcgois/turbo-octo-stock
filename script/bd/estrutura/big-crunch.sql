/* ==================== tabPecaCarro ==================== */

DROP CONSTRAINT IF EXISTS fk_tabPecaCarro_tabBaixaEstoque;

DROP CONSTRAINT IF EXISTS fk_tabPecaCarro_tabCarro;

DROP CONSTRAINT IF EXISTS pk_tabPecaCarro;
    
DROP TABLE IF EXISTS tabPecaCarro;

/* ==================== tabBaixaEstoque ==================== */

DROP CONSTRAINT IF EXISTS qtd_tabBaixaEstoque_nao_negativa;

DROP CONSTRAINT IF EXISTS fk_tabBaixaEstoque_tabCarro;

DROP CONSTRAINT IF EXISTS fk_tabBaixaEstoque_tabPeca;

DROP CONSTRAINT IF EXISTS fk_tabBaixaEstoque_tabFuncionario;

DROP CONSTRAINT IF EXISTS pk_tabBaixaEstoque;

DROP TABLE IF EXISTS tabBaixaEstoque;

/* ==================== tabEntradaEstoque ==================== */

DROP CONSTRAINT IF EXISTS qtd_tabEntradaEstoque_nao_negativa;

DROP CONSTRAINT IF EXISTS fk_tabEntradaEstoque_tabPeca;

DROP CONSTRAINT IF EXISTS fk_tabEntradaEstoque_tabFuncionario;

DROP CONSTRAINT IF EXISTS pk_tabEntradaEstoque;

DROP TABLE IF EXISTS tabEntradaEstoque;

/* ==================== tabFuncionario ==================== */

DROP CONSTRAINT IF EXISTS fk_tabFuncionario_tabFuncionarioCadastro;

DROP CONSTRAINT IF EXISTS fk_tabFuncionario_tabFuncionarioAcesso;

DROP CONSTRAINT IF EXISTS pk_tabFuncionario;

DROP TABLE IF EXISTS tabFuncionario;

/* ==================== tabFuncionarioAcesso ==================== */

DROP CONSTRAINT IF EXISTS pk_tabFuncionarioAcesso;

DROP TABLE IF EXISTS tabFuncionarioAcesso;

/* ==================== tabFuncionarioCadastro ==================== */

DROP CONSTRAINT IF EXISTS pk_tabFuncionarioCadastro;

DROP TABLE IF EXISTS tabFuncionarioCadastro;

/* ==================== tabCompativel ==================== */

DROP CONSTRAINT IF EXISTS fk_tabCompativel_tabCarro;

DROP CONSTRAINT IF EXISTS fk_tabCompativel_tabPeca;

DROP CONSTRAINT IF EXISTS pk_tabCompativel;

DROP TABLE IF EXISTS tabCompativel;

/* ==================== tabCarro ==================== */

DROP CONSTRAINT IF EXISTS fk_tabCarro_tabVeiculo;

DROP CONSTRAINT IF EXISTS fk_tabCarro_tabCliente;

DROP CONSTRAINT IF EXISTS pk_tabCarro;

DROP TABLE IF EXISTS tabCarro;

/* ==================== tabVeiculo ==================== */

DROP CONSTRAINT IF EXISTS fk_tabVeiculo_tabModelo;

DROP CONSTRAINT IF EXISTS pk_tabVeiculo;

DROP TABLE IF EXISTS tabVeiculo;

/* ==================== tabModelo ==================== */

DROP CONSTRAINT IF EXISTS pk_tabModelo;

DROP TABLE IF EXISTS tabModelo;

/* ==================== tabCliente ==================== */

DROP CONSTRAINT IF EXISTS pk_tabCliente;

DROP TABLE IF EXISTS tabCliente;

/* ==================== tabPeca ==================== */

DROP CONSTRAINT IF EXISTS qtd_estoque_tabPeca_nao_negativa;

DROP CONSTRAINT IF EXISTS dimensao_tabPeca_positiva;

DROP CONSTRAINT IF EXISTS valor_tabPeca_positivo;

DROP CONSTRAINT IF EXISTS fk_tabPeca_tabCategoria;

DROP CONSTRAINT IF EXISTS fk_tabPeca_tabFornecedor;

DROP CONSTRAINT IF EXISTS pk_tabPeca;

DROP TABLE IF EXISTS tabPeca;

/* ==================== tabFornecedor ==================== */

DROP CONSTRAINT IF EXISTS ck_tabFornecedor_nome_fornecedor;

DROP CONSTRAINT IF EXISTS pk_tabFornecedor;

/* ==================== tabCategoria ==================== */

DROP CONSTRAINT IF EXISTS ck_tabCategoria_nome_categoria;

DROP CONSTRAINT IF EXISTS pk_tabCategoria;

DROP TABLE IF EXISTS tabCategoria;
