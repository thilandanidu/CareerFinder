 <%-- 
    Document   : index.jsp
    Created on : Apr 26, 2020, 5:21:54 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Colabarion</title>
        <link href="css/web.css" rel="stylesheet">
    </head>
    <body id="page-top">

        <jsp:include page="bootstrap.html"/>
        <jsp:include page="navbar.jsp" />
        

        <header style="background-image: url('img/plymouth.jpg');">
            <div class="header-content">
                <div class="header-content-inner">
                    <h1 id="homeHeading">University Carrer Collaboration</h1>
                    <!--<h2 id="homeHeading">We Create Your Dreams</h2>-->
                    <hr class="light">
                    <p></p>
                    
                </div>
            </div>
        </header>
        

        <section class="features">

            <h3 class="text-center">Follow Us</h3>
            <hr class="primary">

            <div class="container">
                <div class="row">
                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                           <a href="https://www.facebook.com/"><img src="img/face.png" ></a>
                            Facebook 
                        </p>
                            
                    </div>

                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                            <a href="https://www.instagram.com"><img src="img/inst.png"></a>
                             Instagram
                        </p>

                    </div>

                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                            <a href="https://www.youtube.com/"><img src="img/ytd.png"></a>
                        Youtube
                        </p>

                    </div>

                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                            <a href="https://twitter.com/"><img src="img/tw.png"></a>
                             Twitter

                        </p>

                    </div>

                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                            <a href="https://www.skype.com/en/"><img src="img/sky.png"></a>
                            Skype

                        </p>

                    </div>

                    <div class="col-md-2">

                        <p class="arranging" style="text-align: center">

                            <a href="https://telegram.org/"><img src="img/tel.png"></a>
                            Telegram

                        </p>

                    </div>

                </div>

            </div>

        </section>

        <section class="no-padding" id="portfolio"></section>

        <section id="contact" class="bg-dark">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2 text-center">
                        <h2 class="section-heading">Let's With Us!</h2>
                        <hr class="primary">
                        <p>Any problem? <br>Give us a call or send us an email.</p>
                    </div>
                    <div class="col-lg-4 col-lg-offset-2 text-center">
                        <i class="fa fa-phone fa-3x sr-contact"></i>
                        <p>(+94) 77 123 4567</p>
                    </div>
                    <div class="col-lg-4 text-center">
                        <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                        <p>student@gmail.com</p>
                    </div>
                </div>
            </div>
        </section>
        
    </body>
</html>
