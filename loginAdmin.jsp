<%-- 
    Document   : loginAdmin
    Created on : Apr 27, 2020, 2:20:02 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
                <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Login People</title>
        <!-- Bootstrap -->
        <jsp:include page="bootstrap.html"/>
        <script src="swl/dist/sweetalert-dev.js"></script>
        <link rel="stylesheet" href="swl/dist/sweetalert.css">
    </head>
    <body style="background-color:#b2beb5">
        <jsp:include page="navbar.jsp" />
        <section id="login">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Sign-in Admin</h2>
                        <hr class="light">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 col-md-6 text-center">
                        <form action="Adminser" method="POST" name="login">    
                            <input type="text" class="form-control" name="uname" id="uname" placeholder="UserID" required=""/><br>
                            <input type="password" class="form-control" name="pass" id="pass" placeholder="Password" required="" autocomplete="off"/><br>
                            <button class="btn btn-xl btn-danger" name="LogIn" type="submit">Sign-in</button><br>
                        </form>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
