<%-- 
    Document   : logout
    Created on : May 4, 2020, 10:27:41 PM
    Author     : Kavishka Wijesekera
--%>

<%
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    response.setHeader("progma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
<%
//    session = request.getSession();
//    String username = "";
//    if (session.getAttribute("username") == null || session.getAttribute("username") == "" || session.getAttribute("username").equals(null)) {
//        response.sendRedirect("index.jsp");
//    } else {
//        username = session.getAttribute("username").toString();
//    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>logout</h1>
        <%
//            HttpSession session = request.getSession();
//            if (session.getAttribute("uname") != null) {
//                
//                session.removeAttribute("username");
//                request.getSession(false);
//                session.setAttribute("username", null);
//                session.invalidate();
                session.setAttribute("setus", "0");
                session.removeAttribute("uname");
                response.sendRedirect("unitocar/index.jsp");
                //response.sendRedirect("navbar.jsp");

//            }
        %>
    </body>
</html>
