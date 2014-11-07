package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ggois
 */
public class ConnectionFactory {
    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            return DriverManager.getConnection(null);
        } catch (ClassNotFoundException cnfe) {
            throw cnfe;
        } catch (SQLException sqle) {
            throw sqle;
        }
    }
}
