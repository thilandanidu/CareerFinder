<%-- 
    Document   : Aindustrydelete
    Created on : May 7, 2020, 10:41:04 PM
    Author     : Kavishka Wijesekera
--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "university";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection con = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
               <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete</title>
        <jsp:include page="bootstrap.html"/>
        <script src="swl/dist/sweetalert-dev.js"></script>
    </head>
    <body style="background-color:#b2beb5">
        <br>
         <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Delete Industry</h2>
                        <hr class="light">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 col-md-6 text-center" >
                        <form action="#" method="POST"> 
                            <input type="text" class="form-control" name="nm" placeholder="User ID" required=""/><br>
                            
                            <button class="btn btn-xl btn-danger sr-button" name="Update" type="submit">Delete</button><br>
                        </form>
                    </div>
                </div>
            </div>

<!--        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Delete Industry</h1>
        <form method="post" action="#">
            User ID:<input type="text" name="nm"/><br/> 
            
            <input type="submit" value="submit"/>
        </form>-->
        <%
            con = DriverManager.getConnection(connectionUrl+database, userid, password);
        String uid = request.getParameter("nm");

int i = 0;

String sql ="DELETE FROM industry WHERE userid=?";

try {
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, uid);
   
    i = ps.executeUpdate();
} catch (SQLException e) {
    e.printStackTrace();
}
        %>
    </body>
</html>
