<%-- 
    Document   : Unistudent
    Created on : Apr 29, 2020, 11:42:24 AM
    Author     : Kavishka Wijesekera
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%
        session =request.getSession();
        String uid="";
        String name="";
        String university="";
        if(session.getAttribute("uid")==null ||session.getAttribute("uid")==""||session.getAttribute("uid").equals(null))
        {
        response.sendRedirect("newjsplog.jsp");
        }
        else
        {
        uid=session.getAttribute("uid").toString();
         name=session.getAttribute("name").toString();
         university=session.getAttribute("university").toString();

        }
        %>

<!DOCTYPE html>
<html>
    <head>
    
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>University student</title>

        <!-- Bootstrap -->
        <jsp:include page="bootstrap.html"/>
        
        <link href="css/web.css" rel="stylesheet">


    </head>

    <body id="page-top">

        <jsp:include page="navbar.jsp" />
        

        <header style="background-image: url('img/Und.jpg');">
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 id="homeHeading" style="color: darkgoldenrod"><b>University Student</b>
                    Welcome <%=name%> from <%=university%> </h1>
                    <hr class="light">
                    <p></p>
                    <div class="row">
                        <div class="col-lg-8 col-lg-offset-2 text-center">
                            
                            
                            
                            <a href="ViewNew.jsp" class="btn btn-xl btn-danger" style=" width: 200px;"> Post </a>
                            <br><br>
                            <a href="eventfile.jsp" class="btn btn-xl btn-danger" style=" width: 200px;"> Event </a>
                            <br><br>
                            <a href="message.jsp" class="btn btn-xl btn-info" style=" width: 200px;"> Message  </a>
                            <br><br>
                            <a href="myproject.jsp" class="btn btn-xl btn-info" style=" width: 200px;"> MY PROJECTS </a>
                            <br><br>
                            <a href="IndViewImage.jsp" class="btn btn-xl btn-warning" style=" width: 200px;"> Industry Events </a>
                            <br><br>
                            <a href="UniAddproject.jsp" class="btn btn-xl btn-warning" style=" width: 250px;"> ADD Project & Problem </a>
                            
                        </div> 

                    </div> 
                </div>
            </div>
        </header>
      
     </body>

</html>
