<%-- 
    Document   : UniAddproject
    Created on : Apr 29, 2020, 12:25:29 PM
    Author     : Kavishka Wijesekera
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:include page="bootstrap.html" />
        <script src="swl/dist/sweetalert-dev.js"></script>
        <link rel="stylesheet" href="swl/dist/sweetalert.css">
        <title>Add Project</title>
        
    </head>
    <body style="background-color:#b2beb5"s>
        <jsp:include page="navbar.jsp" />

        <div class="container" style="padding-top: 50px;">
            <h1 class="page-header" >Add Project & Problem</h1>
                <!-- edit form column -->
                <div class="col-md-6 col-sm-6 col-xs-12 personal-info">
                    <h3>Project info,</h3>
                    <br>
                    <form action="addpost" class="form-horizontal" method="post">
                      
                        <div class="form-group">
                            <label class="col-lg-3 control-label">User ID:</label>
                            <div class="col-lg-8">
                                <input type="text" name="id"  class="form-control" autofocus required="">                
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Date:</label>
                            <div class="col-md-8">
                                <input type="date" name="date" class="form-control" required="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Project Name:</label>
                            <div class="col-lg-8">
                                <input type="text" name="pn" class="form-control" autofocus required="">                
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">Project Type:</label>
                            <div class="col-md-8">
                                <input type="text" name="pt" class="form-control" required="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Description: </label>
                            <div class="col-lg-8 ">
                                <!--<input type="text" name="ds" class="form-control" required="">-->
                                <textarea rows="3" cols="30" name="ds" required=""></textarea>             
                            </div>
                        </div>

                       
                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-8 ">
                                <input class="btn btn-danger" value="Post project" type="submit">
                            </div>
                        </div>
                    </form>
                </div>
           </div>
        
    </body>
</html>
