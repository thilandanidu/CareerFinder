/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
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
@WebServlet(name = "Servsign2", urlPatterns = {"/Servsign2"})
public class Servsign2 extends HttpServlet {

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
            out.println("<title>Servlet Servsign2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Servsign2 at " + request.getContextPath() + "</h1>");
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
        //processRequest(request, response);
        try
        {
        String a1=request.getParameter("name");
        String a2=request.getParameter("email");
        String a3=request.getParameter("UID");
        String a4=request.getParameter("password1"); 
        String a5=request.getParameter("nic");
        String a6=request.getParameter("add");
        String a7=request.getParameter("emp");
        String a8=request.getParameter("com");
        String a9=request.getParameter("cno");
        String a10=request.getParameter("dep");
        String type = "user";
        
        UserClass UC = new UserClass();
        
        if (UC.InsertUser2(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10)) {
                //session
                HttpSession session = request.getSession(true);
                session.setAttribute("UID", a3);
                session.setAttribute("type", type);
                request.getSession().setAttribute("UID", a3);
                request.getSession().setAttribute("type", type);
            } else 
            {
                System.out.println("saving failed");
            }
        response.sendRedirect("loginPeople.jsp");
        }
        catch (SQLException ex) {}
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
