<%-- 
    Document   : PeopleSignup
    Created on : Apr 28, 2020, 4:51:26 PM
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
         <script>
            function validate() {

                if (document.getElementById("email").value.length == 0) {
                    swal("Please Type Your Email..!", null, "error");
                    return false;
                }

                if (document.getElementById("pw1").value != document.getElementById("pw2").value) {
                    swal("Password does not match..!", null, "error");
                    return false;
                }

            }
        </script>
        <jsp:include page="navbar.jsp" />
        <section id="login">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <h2 class="section-heading">Create Industry People Account</h2>
                        <hr class="light">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-3"></div>
                    <div class="col-lg-6 col-md-6 text-center" >
                        <form action="Servsign2" method="POST" name="signup" onsubmit="return validate();"> 
                            <input type="text" id="name" class="form-control" name="name" placeholder="Name" required=""/><br>
                            <input type="text" id="email" class="form-control" name="email" placeholder="Email" required=""/><br>
                            <input type="text" id="Uname" class="form-control" name="UID" placeholder="User ID" required=""/><br>
                            <input type="password" id="Pw1" class="form-control" name="password1" placeholder="Password" autocomplete="off" required=""/><br>
<!--                            <input type="password" id="Pw2" class="form-control" name="password2" placeholder="Re-type password" required=""/><br>-->
                            <input type="text" id="Nic" class="form-control" name="nic" placeholder="NIC No" required=""/><br>
                            <input type="text" id="City" class="form-control" name="add" placeholder="Address" required=""/><br>
                            <input type="text" id="City" class="form-control" name="emp" placeholder="Employee No" required=""/><br>
                            <input type="text" id="Street" class="form-control" name="com" placeholder="Company Name" required=""/><br>
                            <input type="text" id="Cno" class="form-control" name="cno" placeholder="Contact Number" required=""/><br>
                            <input type="text" id="fac" class="form-control" name="dep" placeholder="Department" required=""/><br>
                            <hr class="dark">
                            <br><br>
                            <button class="btn btn-xl btn-info sr-button" name="SignUp" type="submit">Create my account</button><br>
                        </form>
                    </div>
                    <% if (String.valueOf(request.getAttribute("error")).equals("error")) { %>
                    <script> swal("Error in Signup!", null, "error");</script>
                    <% }%>
                    <% if (String.valueOf(request.getAttribute("error")).equals("exists")) { %>
                    <script> swal("Email Already Exists!", null, "error");</script>
                    <% }%>
                </div>
            </div>
        </section>
    </body>
</html>
