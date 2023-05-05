<%-- 
    Document   : EnterCode
    Created on : Mar 20, 2023, 2:30:13 PM
    Author     : TCNJK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%-- 
    Document   : ForgotPass
    Created on : Mar 20, 2023, 1:49:01 PM
    Author     : TCNJK
--%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <title>Reset Pass</title>
    </head>
    <body>
        <style>.form-gap {
                padding-top: 70px;
            }</style>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <div class="form-gap"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="text-center">
                                <h3><i class="fa fa-lock fa-4x"></i></h3>
                                <h2 class="text-center">Enter you code</h2>
                                <p>Check your email to get code</p>
                                
                                <p style="color: red;">${rp}</p>
                                <div class="panel-body">

                                    <form id="register-form" role="form" autocomplete="off" class="form" action="resetPass" method="get">

                                        <div class="form-group">
                                            <div class="input-group">
                                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope color-blue"></i></span>
                                                <input required id="code" name="code" placeholder="Enter code here" class="form-control"  type="text">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <input name="recover-submit" class="btn btn-lg btn-primary btn-block" value="Reset Password" type="submit">
                                        </div>

                                        <input type="hidden" class="hide" name="token" id="token" value=""> 
                                    </form>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>