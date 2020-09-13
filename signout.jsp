<%-- 
    Document   : signout
    Created on : May 4, 2020, 10:24:45 PM
    Author     : Kavishka Wijesekera
--%>
<%
        session =request.getSession();
        String username="";
        if(session.getAttribute("username")==null ||session.getAttribute("username")==""||session.getAttribute("username").equals(null))
        {
        response.sendRedirect("index.jsp");
        }
        else
        {
        username=session.getAttribute("username").toString();
        }
        %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
            response.setHeader("progma","no-cache");
            response.setDateHeader("Expires", 0);
        %>
    <center><h1>are u sure</h1></center>
    <center><a href="logout.jsp"><input type="submit" value="enter"/></a></center>
    </body>
</html>
