<%-- 
    Document   : categorySignup
    Created on : Apr 27, 2020, 4:34:35 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>category Login</title>
        <jsp:include page="bootstrap.html"/>
    </head>
    <body style="background-color:#b2beb5" >
        <jsp:include page="navbar.jsp" />
    <section id="about">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 text-center">
                        <h2 class="section-heading" style="color: black">Select Your Category..!</h2>
                        <hr class="black">
                    </div>
                </div>
                       
                       <div class="col-md-6 col-sm-6 col-xs-12 text-center" >
                            <a href="StudentSignup.jsp">
                                <div style="background-color:#b4e7ea" class="thumbnail" style='min-width:300px; width:100%; height:300px;'>
                                    <img style="background-color:#b4e7ea" class="card-img-top" style='height: 220px;' src="img/student.jpg" alt="Card image cap">
                                        <div class="card-block">
                                            <h4 class="card-title">Create Student Account</h4>
                                        </div>
                                </div> 
                            </a>
                        </div>
                
                <div class="col-md-6 col-sm-6 col-xs-12 text-center">
                            <a href="PeopleSignup.jsp">
                                <div style="background-color:#b4e7ea" class="thumbnail" style='min-width:300px; width:100%; height:300px;'>
                                    <img style="background-color:#b4e7ea" class="card-img-top" style='height: 220px;' src="img/com.png" alt="Card image cap">
                                        <div class="card-block">
                                            <h4 class="card-title">Create Industry People Account</h4>
                                        </div>
                                </div> 
                            </a>
                        </div>  
            </div>
        </section>
    </body>
</html>
