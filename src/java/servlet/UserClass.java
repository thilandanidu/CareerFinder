/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.mysql.jdbc.Blob;
import db.DBCon;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Vector;

/**
 *
 * @author Kavishka Wijesekera
 */
public class UserClass {

    Vector V = new Vector();
    Statement stmt;
    Connection conn = new DBCon().conn;

    //add uni student
    public boolean InsertUser(String a1, String a2, String a3, String a4, String a5, String a6, String a7, String a8, String a9, String a10) throws SQLException {
        boolean F = false;
        try {
            String sql = "INSERT INTO student(`name`, `email`, `uid`, `password`, `nic`, `sno`, `address`, `university`, `cno`, `facility`) VALUES ('" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "','" + a5 + "','" + a6 + "','" + a7 + "','" + a8 + "','" + a9 + "','" + a10 + "')";

            stmt = new DBCon().connectToDB().createStatement();
            stmt.executeUpdate(sql);
            stmt.close();
            F = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return F;
    }

    //add industry people
    public boolean InsertUser2(String a1, String a2, String a3, String a4, String a5, String a6, String a7, String a8, String a9, String a10) throws SQLException {
        boolean F = false;
        try {
            String sql = "INSERT INTO industry(`name`, `email`, `userid`, `pass`, `nic`, `addres`, `empno`, `comno`, `cno`, `depart`) VALUES ('" + a1 + "','" + a2 + "','" + a3 + "','" + a4 + "','" + a5 + "','" + a6 + "','" + a7 + "','" + a8 + "','" + a9 + "','" + a10 + "')";

            stmt = new DBCon().connectToDB().createStatement();
            stmt.executeUpdate(sql);
            stmt.close();
            F = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return F;
    }

    //addproject
    /*  public boolean InsertUser3P(String a1, String a2, String a3, String a4, String a5) throws SQLException 
    {
        boolean F = false;
        try {
            String sql ="INSERT INTO `project`(`id`, `date`, `pname`, `ptype`, `des`)  VALUES ('"+ a1 + "','" + a2 + "','" + a3 + "','" + a4 + "','" + a5 + "')";
            
            stmt = new DBCon().connectToDB().createStatement();
            stmt.executeUpdate(sql);
            stmt.close();
            F = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return F;
    }*/
   /* public List getList(Blob image) throws SQLException, ClassNotFoundException {
        String sql = "select Image from stuevent";
        stmt = new DBCon().connectToDB().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
            Blob blob = (Blob) rs.getBlob("Image");
            
//            byte byteArray[] = blob.getBytes(1, (int) blob.length());
//            response.setContentType("Image");
//            OutputStream os = response.getOutputStream();
//            os.write(byteArray);
//            os.flush();
//            os.close();
        }
    }*/

    public Vector getUser(String username, String password) throws ClassNotFoundException, SQLException {
        String sql = "SELECT * FROM student WHERE uid = '" + username + "' and password = '" + password + "'";
        stmt = new DBCon().connectToDB().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.first()) {
            V.add(rs.getString("uid"));
            V.add(rs.getString("name"));
            V.add(rs.getString("university"));

            
        }
        rs.close();
        stmt.close();
        return V;
    }

    public Vector getUser2(String username, String password) throws ClassNotFoundException, SQLException {
        String sql = "SELECT * FROM industry WHERE userid = '" + username + "' and pass = '" + password + "'";
        stmt = new DBCon().connectToDB().createStatement();
        ResultSet rs = stmt.executeQuery(sql);
        if (rs.first()) {
            V.add(rs.getString("userid"));

           
        }
        rs.close();
        stmt.close();
        return V;
    }
   
}
