package dao;

import java.sql.Connection;
import java.sql.SQLException;
import util.ConnectionFactory;

/**
 *
 * @author ggois
 */
public abstract class AbstractDao {
    
    protected Connection connection;

    public AbstractDao() throws ClassNotFoundException, SQLException {
        connection = ConnectionFactory.getConnection();
    }
    
}
