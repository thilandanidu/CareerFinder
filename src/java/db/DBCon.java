
package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Kavishka Wijesekera
 */
public class DBCon {
    public static Connection conn;

    String severHost = "localhost";
    String port = "3306";
    String username = "root";
    String password = "";
    String DBName = "university";
    public Connection connectToDB() throws SQLException, ClassNotFoundException {
        System.out.println("Loading the driver");
        Class.forName("com.mysql.jdbc.Driver");
        System.out.println("Connecting");
        String url = "jdbc:mysql://" + severHost + ":" + port + "/" + DBName;
        System.out.println("Connected");
        conn = DriverManager.getConnection(url, username, password);
        return conn;
    }
    //jdbc:mysql://localhost:3306/university

    
}
