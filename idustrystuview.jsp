<%-- 
    Document   : idustrystuview
    Created on : May 5, 2020, 10:02:58 PM
    Author     : Kavishka Wijesekera
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="bootstrap.html" />
        <script src="swl/dist/sweetalert-dev.js"></script>
        <link rel="stylesheet" href="swl/dist/sweetalert.css">
    </head>
    <body style="background-color:#b4e7ea">
        <jsp:include page="navbar.jsp" />
        <br><br>
       
         <div class="col-md-12 col-sm-6 col-xs-12 text-center " >
                    <h2 style="font-family: Serif;font-weight: bold;color: darkblue;font-size:50px;">View Student Project</h2>
                    <br><br>
         </div>
        
        <table class="table table-dark table-hover">
<tr>
    <thead class="thead-dark">
            <tr>
      <th scope="col">ID</th>
      <th scope="col">Date</th>
      <th scope="col">Project Name</th>
      <th scope="col">Project Type</th>
      <th scope="col">Description</th>
    </tr>
  </thead>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from project";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){ 
    %>
    <tr ><!--name,age,gender .. are database column-->
 <td><%=resultSet.getString("id") %></td> 
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("pname") %></td>
<td><%=resultSet.getString("ptype") %></td>  
<td><%=resultSet.getString("des") %></td>  
</tr>
<%
    }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>

        </table>
        <div class="col-md-12 col-sm-6 col-xs-12 text-center " >
             <li><a href="industrylogin.jsp" class="btn btn-danger btn btn-xl" >BACK</a></li>
        </div>
    </body>
</html>
