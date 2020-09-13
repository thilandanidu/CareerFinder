<%-- 
    Document   : Aindustryview
    Created on : May 7, 2020, 10:25:32 PM
    Author     : Kavishka Wijesekera
--%>
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
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-color:#b2beb5">
        <jsp:include page="navbar.jsp" />
        <br><br>
        <div class="col-md-12 col-sm-6 col-xs-12 text-center " >
                    <h2 style="font-family: Serif;font-weight: bold;color:darkslategray;font-size:50px;">Industry Details</h2>
                    <br>
         </div>
        <div class="col-lg-8 col-lg-offset-2 text-center">
                      <a href="Aindustryupdate.jsp" class="btn btn-xl btn-warning" style=" width: 240px;">Update Industry Details</a>
                            <br><br>
                            <a href="Aindustrydelete.jsp" class="btn btn-xl btn-warning" style=" width: 240px;">Delete Industry Details</a>
                            <br><br>
                  </div>
        <br><br>

        <table class="table table-dark table-hover">
<tr>
<td>Name</td>
<td>Email</td>
<td>UserID</td>
<td>Password</td>
<td>NIC</td>
<td>Address</td>
<td>StudentNO</td>
<td>Company</td>
<td>ContactNO</td>
<td>Department</td>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from industry";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){ 
    %>
    <tr><!--name,age,gender .. are database column-->
 <td><%=resultSet.getString("name") %></td> 
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("userid") %></td>
<td><%=resultSet.getString("pass") %></td>  
<td><%=resultSet.getString("nic") %></td>
<td><%=resultSet.getString("addres") %></td>
<td><%=resultSet.getString("empno") %></td> 
<td><%=resultSet.getString("comno") %></td>
<td><%=resultSet.getString("cno") %></td>
<td><%=resultSet.getString("depart") %></td>
</tr>
<%
    }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>
        </table>
    </body>
</html>
