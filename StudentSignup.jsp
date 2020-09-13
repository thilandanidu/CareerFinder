<%-- 
    Document   : StudentSignup
    Created on : Apr 27, 2020, 7:40:04 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Student Signup</title>
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
                        <h2 class="section-heading">Create Student Account</h2>
                        <hr class="light">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 col-md-6 text-center" >
                        <form action="Servsign" method="POST" name="signup"> 
                            <input type="text" id="name" class="form-control" name="name" placeholder="Name" required=""/><br>
                            <input type="text" id="email" class="form-control" name="email" placeholder="Email" required=""/><br>
                            <input type="text" id="Uname" class="form-control" name="UID" placeholder="User ID" required=""/><br>
                            <input type="password" id="Pw1" class="form-control" name="password1" placeholder="Password" autocomplete="off" required=""/><br>
<!--                            <input type="password" id="Pw2" class="form-control" name="password2" placeholder="Re-type password" required=""/><br>-->
                            <input type="text" id="Nic" class="form-control" name="nic" placeholder="NIC No" required=""/><br>
                            <input type="text" id="sno" class="form-control" name="sno" placeholder="Student No" required=""/><br>
                            <input type="text" id="City" class="form-control" name="addres" placeholder="Address" required=""/><br>
                            <input type="text" id="Street" class="form-control" name="university" placeholder="University" required=""/><br>
                            <input type="text" id="Cno" class="form-control" name="cno" placeholder="Contact Number" required=""/><br>
                            <input type="text" id="fac" class="form-control" name="fac" placeholder="Faculty" required=""/><br>
                            <hr class="dark">
                            <br><br>
                            <button class="btn btn-xl btn-info sr-button" name="SignUp" type="submit">Create my account</button><br>
                        </form>
                    </div>
                   
                </div>
            </div>
        </section>
    </body>
</html>
