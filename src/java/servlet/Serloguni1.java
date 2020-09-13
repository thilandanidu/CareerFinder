/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Kavishka Wijesekera
 */
@WebServlet(name = "Serloguni1", urlPatterns = {"/Serloguni1"})
public class Serloguni1 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Serloguni1</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Serloguni1 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("uname");
            String password = request.getParameter("pass");
           
        
            
            try {
                
              
            
                
                
                String databaseURL="jdbc:mysql://localhost/university";
                String user="root";
                String pass="";
                Connection conn=null;
                Class.forName("com.mysql.jdbc.Driver").newInstance();
                conn=DriverManager.getConnection(databaseURL,user,pass);
                
                Statement st = conn.createStatement();
            String sql = ("SELECT * FROM student order by uid;");
ResultSet rs = st.executeQuery(sql);
String uid=null;
String pas=null;
String uni=null;
int status=0;
PrintWriter out = response.getWriter();

 while(rs.next()) { 
  uid = rs.getString("uid"); 
  pas = rs.getString("password");
  uni=rs.getString("university");
    if(username.equals(uid)&&password.equals(pas))
        {
            status=1; break;
         }
        else
         {
             status=0;
         }
    }



if(status==1)
{
     UserClass us = new UserClass();
            HttpSession session = request.getSession(true);
      Vector details = us.getUser(username, password);
                
                
                if (details.size() < 1) {
                    session.setAttribute("setus", "0");
                    //request.setAttribute("error", "error");
                    request.getRequestDispatcher("loginUser.jsp").forward(request, response);
                } else  {
                    //session.setAttribute("uname",username);
                    session.setAttribute("uname", username);
                    session.setAttribute("setus", "1");
                    
                    
                    session.setAttribute("uid", details.get(0));
                    session.setAttribute("name", details.get(1));
                    session.setAttribute("university", details.get(2));
                    request.getSession().setAttribute("uid", details.get(0));
                    request.getSession().setAttribute("name", details.get(1));
                    request.getSession().setAttribute("university", details.get(2));
                    response.sendRedirect("Unistudent.jsp");
                }
    
}
else
{
    out.println("<script type=\"text/javascript\">");
       out.println("alert('User or password incorrect');");
       out.println("</script>");
       response.sendRedirect("loginUser.jsp"); 
}
              
            } catch (Exception ex) {
                ex.printStackTrace();
            }
       
    }
    
    
    
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
