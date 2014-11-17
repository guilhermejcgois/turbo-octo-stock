package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.PecaBean;
import util.ConnectionFactory;

/**
 *
 * @author ggois
 */
public class PecaDao extends AbstractDao {
    
    private static final String BEAN_NULL = "PecaBean não pode ser nulo!";

    public PecaDao() throws ClassNotFoundException, SQLException {
        super();
    }
    
    public void salver(PecaBean bean) throws SQLException {
        Connection c = null;
        PreparedStatement ps = null;
        String SQL = "INSERT INTO tabPeca ("
                + "nome, "
                + "cod_fornecedor, "
                + "descricao, "
                + "valor, "
                + "peso, "
                + "dimensao, "
                + "cod_categoria, "
                + "imagem, "
                + "qtd_estoque) "
                + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
        
        if (bean == null)
            throw new NullPointerException(BEAN_NULL);
        
        try {
            c = connection;
            ps = c.prepareStatement(SQL);
            
            ps.setString(1, bean.getNome());
            ps.setInt(2, bean.getFornecedor().getCodigo());
            ps.setString(3, bean.getDescricao());
            ps.setFloat(4, bean.getValor());
            ps.setFloat(5, bean.getPeso());
            ps.setString(6, bean.getDimensao());
            ps.setInt(7, bean.getCategoria().ordinal());
            ps.setString(8, bean.getImagem());
            ps.setInt(9, bean.getQuantidade());
            
            ps.executeQuery();
        } catch (SQLException sqle) {
            throw sqle;
        } finally {
            ConnectionFactory.closeConnection(connection, ps);
        }
    }
    
    public void atualizar(PecaBean bean) { }
    
    public void remover(PecaBean bean) { }
    
    public PecaBean recuperar(String codigo) {
        PecaBean bean = new PecaBean();
        
        return bean;
    }
    
    public List<PecaBean> recuperarPorNome(String nome) {
        List<PecaBean> list = new ArrayList<>();
        
        return list;
    }
    
    public List<PecaBean> recuperarTodos() {
        List<PecaBean> list = new ArrayList<>();
        
        return list;
    }
    
}
