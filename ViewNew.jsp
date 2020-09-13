<%-- 
    Document   : ViewNew
    Created on : May 6, 2020, 6:53:57 PM
    Author     : Kavishka Wijesekera
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="db.DBCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="bootstrap.html" />
        <script src="swl/dist/sweetalert-dev.js"></script>
        <title>JSP Page</title>
    </head>
    <body style="background-color:#b2beb5">
        <jsp:include page="navbar.jsp" />
        <br><br>
        <div class="col-md-12 col-sm-6 col-xs-12 text-center " >
                    <h2 style="font-family: Serif;font-weight: bold;color:black;font-size:50px;">View Post</h2>
                    <br><br>
         </div>
        <table class="table table-dark table-hover">
            
                <tbody>
                    <tr>
                        <td><center><b>Post ID</b></center></td><td><center><b>Id</b></center><td><center><b>First Name</b></center></td><td><center><b>Last Name</b></center></td><td><center><b>Image</b></center></td>
                    </tr>
                    
                    <%
                        try
                        {
                                DBCon dbconn=new DBCon();
                                Connection connectToDB= dbconn.connectToDB();

                                String sqlString = "SELECT * FROM stuevent";
                                Statement myStatement = connectToDB.createStatement();
                                ResultSet rs=myStatement.executeQuery(sqlString);
                                
                                if(!rs.isBeforeFirst())
                                {
                                    %>
                                        <tr>
                                        <td colspan="3"><center><%out.print("No Files!"); %></center></td>
                                        </tr>
                                    <%
                                }    
                                
                                while(rs.next())
                                {   
                            %>
                                    <tr>
                                        <td><center><%out.print(rs.getString("postid")); %></center></td>
                                        <td><center><%out.print(rs.getString("id")); %></center></td>
                                        <td><center><%out.print(rs.getString("firstname")); %></center></td>
                                        <td><center><%out.print(rs.getString("lastname")); %></center></td>
                                        <td><center><a href="Viewnew2.jsp?id=<%out.print(rs.getString("id"));%>">View Image</a></center></td>
                                    </tr>
                            <%
                                }
                            %>
                            
                </tbody> 
        </table>
                            
                            <%
                                rs.close();
                                myStatement.close();
                                connectToDB.close();
                        }catch(Exception e){e.printStackTrace();}    
                        
                    %>
                     
    </body>
</html>
