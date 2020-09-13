<%-- 
    Document   : Indryevnt
    Created on : May 6, 2020, 5:01:25 PM
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
        <title>Event</title>
    </head>
    <body style="background-color:#b2beb5">
        <jsp:include page="navbar.jsp" />

        <div class="container" style="padding-top: 50px;">
            <h1 class="page-header" >Event</h1>


            
                <!-- edit form column -->
                <div class="col-md-6 col-sm-6 col-xs-12 personal-info">
                    <h3>Upload Event,</h3>
                    <form action="file3" class="form-horizontal" role="form" enctype="multipart/form-data" method="post" class="md-form">
                       


                        <div class="form-group">
                            <label class="col-lg-3 control-label">User ID:</label>
                            <div class="col-lg-8">
                                <input type="text" name="id"  class="form-control" autofocus required="">                
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-3 control-label">First Name</label>
                            <div class="col-md-8">
                                <input type="text" name="fname" id="numofslots" class="form-control" required="">
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-lg-3 control-label">Last Name </label>
                            <div class="col-lg-8">
                                <input type="text" name="lname"  class="form-control" autofocus required="">                
                            </div>
                        </div>

 
                          <div style="position:relative;">
                          <label class="col-md-3 control-label">Upload Image</label>
                          <a class='btn btn-danger' href='javascript:;'>
                          Choose File
                          <input type="file" required="" style='position:absolute;z-index:2;top:0;left:0;filter: alpha(opacity=5);-ms-filter:"progid:DXImageTransform.Microsoft.Alpha(Opacity=5)";opacity:0;background-color:transparent;color:transparent;' name="file" size="40"  onchange='$("#upload-file-info").html($(this).val());'>
                          </a>
                          &nbsp;
                          <span class='label label-info' id="upload-file-info"></span>
                          </div>
                          <br><br>

                        <div class="form-group">
                            <label class="col-md-3 control-label"></label>
                            <div class="col-md-8 ">
                                <input class="btn btn-warning"  value="Post project" type="submit" >
                            </div>
                        </div>
                    </form>

                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">


                </div>
            </div>
        </div> 
    </body>
</html>

