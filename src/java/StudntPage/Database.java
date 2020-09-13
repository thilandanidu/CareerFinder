/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package StudntPage;

/**
 *
 * @author Kavishka Wijesekera
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Database {
    public Connection conn;
    void DBConn(String qry) {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
   try{
       
   Class.forName("com.mysql.jdbc.Driver");
   String url="jdbc:mysql://localhost:3306/university";
             
              conn = DriverManager.getConnection(url,"root","");
              Statement st=conn.createStatement();
            st.executeUpdate(qry);
   }
   catch(ClassNotFoundException |SQLException e)
   {}
    }
    
}
