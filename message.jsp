<%-- 
    Document   : message
    Created on : May 5, 2020, 10:45:17 AM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="bootstrap.html" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Send Message</title>
    </head>
    <body style="background-color:#b4e7ea">
        <div class="container" style="padding-top: 10px;">
            <h1 class="page-header" >Send Message </h1>
                <!-- edit form column -->
                
                    <form action="mgssv" class="form-horizontal" method="post">
                      
                        <div class="form-group">
                            <label class="col-lg-1 control-label">User ID:</label>
                            <div class="col-lg-5">
                                <input type="text" name="id1"  class="form-control" autofocus required="">                
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-1 control-label">Date:</label>
                            <div class="col-md-5">
                                <input type="date" name="date1" class="form-control" required="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-1 control-label">Message</label>
                            <div class="col-lg-5">
                                               
                                <textarea rows="5" cols="60" name="mg" required=""></textarea> 
                            </div>
                        </div>

                       

                       
                        <div class="form-group">
                            <label class="col-md-3 control-label "></label>
                            <div class="col-md-8 ">
                                <input class="btn btn-info btn-xl" value="SEND" type="submit">
                            </div>
                        </div>
                    </form>
                </div>
        
       
         <div class="container" style="padding-top: 20px;">
            <h1 class="page-header" >View Message </h1>
         </div>
        
        <table class="table table-dark table-hover">
<tr>
    <thead class="thead-dark">
            <tr>
      <th scope="col">ID</th>
      <th scope="col">Date</th>
      <th scope="col">Message</th>
    
    </tr>
  </thead>

<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from messga where id='1111'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){ 
    %>
    <tr >
<td><%=resultSet.getString("id") %></td> 
<td><%=resultSet.getString("date") %></td>
<td><%=resultSet.getString("messge") %></td>
 
</tr>
<%
    }
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

%>

        </table><div class="col-md-12 col-sm-6 col-xs-12 text-center " ><li><a href="Unistudent.jsp" class="btn btn-danger btn btn-xl" >BACK</a></li><h1></h1>
        </div>

    </body>
</html>
