<%-- 
    Document   : navbar.jsp
    Created on : Apr 26, 2020, 5:39:16 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="bootstrap.html"/>
        <link rel="stylesheet" type="text/css" href="css/dropdown.css">
        <link href="css/navbar.css" rel="stylesheet">
        <link href="assets/css/font-awesome.css" rel="stylesheet">
    </head>
    <body>


        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="unitocar/index.jsp"> 

                        <img src="img/home.jpg" style="height:43px; width: 43px;">
                        
<!--                        
                        <!--<p style="padding-right:80px;padding-bottom:100px;">SUIC</p>-->
                    </a>

                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span> 
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <% try {
                                String UN = request.getSession().getAttribute("setus").toString();
                                if (UN.equals("1")) {
                        %>
                        <li><a href="Unistudent.jsp" style="background-color: #269abc "><span class="glyphicon glyphicon-user"></span>&nbsp<%out.print(request.getSession().getAttribute("uname"));%></a></li>
                        <li><a href="categorySignup.jsp" style="background-color: #449d44 "><span class="glyphicon glyphicon-edit"></span>&nbspNew Sign-up &nbsp</a></li>
                        <li><a href="logout.jsp" style="background-color: #F05F40 "><span class="glyphicon glyphicon-off"></span>&nbspLogOut</a></li>

                        <% } else if (UN.equals("0")) { %>
                        
                        <li><a href="categoryLogin.jsp" style="background-color: #00a3cc "><span class="glyphicon glyphicon-user"></span>&nbspLogin</a></li>
                        <li><a href="categorySignup.jsp" style="background-color: #0066cc "><span class="glyphicon glyphicon-edit"></span>&nbspSign-up</a></li>
                        
                        <% } else if (UN.equals("2")){ %>
                        <li><a href="industrylogin.jsp" style="background-color: #269abc "><span class="glyphicon glyphicon-user"></span>&nbsp<%out.print(request.getSession().getAttribute("uname"));%></a></li>
                        <li><a href="categorySignup.jsp" style="background-color: #449d44 "><span class="glyphicon glyphicon-edit"></span>&nbspNew Sign-up &nbsp</a></li>
                        <li><a href="logout.jsp" style="background-color: #F05F40 "><span class="glyphicon glyphicon-off"></span>&nbspLogOut</a></li>
                            <% } %>
                            <% }
                                catch (Exception e) { %>
                        <li><a href="categoryLogin.jsp" style="background-color: #00a3cc "><span class="glyphicon glyphicon-user"></span>&nbspLogin</a></li>
                        <li><a href="categorySignup.jsp" style="background-color: #0066cc "><span class="glyphicon glyphicon-edit"></span>&nbspSign-up</a></li>

                        <% }%>



                    </ul>
                </div>
            </div>
        </nav>
        <script type="text/javascript">
            $(".navbar-toggle").click(function (event) {
                $(".navbar-collapse").toggle('in');
            });
        </script>
    </body>

</body>
</html>
