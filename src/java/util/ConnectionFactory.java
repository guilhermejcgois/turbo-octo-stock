package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ggois
 */
public class ConnectionFactory {
    
    private static final String BANCO = "dbEstoque";
    private static final String PORTA = "5432";
    private static final String SERVIDOR = "localhost";
    
    private static final String USUARIO = "ggois";
    private static final String SENHA = "#G1th1t@#$"; 
            
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        Class.forName("org.postgresql.Driver");
        return DriverManager.getConnection("jdbc:postgresql://" + SERVIDOR 
                + ":" + PORTA + "/" + BANCO,
                USUARIO,
                SENHA
            );
    }
    
    public static void closeConnection(Connection connection, Statement statement, ResultSet set) throws SQLException {
        close(connection, statement, set);
    }
    
    public static void closeConnection(Connection connection, Statement statement) throws SQLException {
        close(connection, statement, null);
    }
    
    public static void closeConnection(Connection connection) throws SQLException {
        close(connection, null, null);
    }
    
    private static void close(Connection connection, Statement statement, ResultSet set) throws SQLException {
        if (set != null) set.close();
        if (statement != null) statement.close();
        if (connection != null) statement.close();
    }
}
