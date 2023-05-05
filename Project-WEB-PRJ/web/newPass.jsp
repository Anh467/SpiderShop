<%-- 
    Document   : newPass
    Created on : Mar 20, 2023, 2:54:50 PM
    Author     : TCNJK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-sm-12">
                    <h1>Change Password</h1>
                </div>
            </div>
            <div class="row">
                <%
                    String userId = request.getParameter("userid");
                %>
                <div class="col-sm-6 col-sm-offset-3">
                    <form method="post" id="passwordForm" action="setPass">
                        <table>
                            <tr>
                                <th>User ID</th>
                                <td>
                                    <input type="text" readonly class="input-lg form-control" name="userId" value="<%=userId%>">
                                </td>
                            </tr>
                            <tr>
                                <th>New Password</th>
                                <td>
                                    <input type="password" class="input-lg form-control" name="password" id="password" placeholder="New Password" autocomplete="off">
                                </td>
                            </tr>
                            <tr>
                                <th>Confirm Password</th>
                                <td>
                                    <input type="password" class="input-lg form-control" name="confirm-password" id="confirm-password" placeholder="Repeat Password" autocomplete="off" onkeyup='checkPasswordMatch();'>
                                </td>
                            </tr>
                        </table>

                        <div id="divCheckPasswordMatch" style="color: red;"></div>
                        <input type="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Change Password" disabled>
                    </form>

                    <script>
                        function checkPasswordMatch() {
                            var password = document.getElementById("password").value;
                            var confirmPassword = document.getElementById("confirm-password").value;
                            var submitButton = document.querySelector('input[type="submit"]');

                            if (password != confirmPassword) {
                                document.getElementById("divCheckPasswordMatch").innerHTML = "Passwords do not match!";
                                submitButton.disabled = true;
                            } else {
                                document.getElementById("divCheckPasswordMatch").innerHTML = "Passwords match.";
                                submitButton.disabled = false;
                            }
                        }
                    </script>
                </div><!--/col-sm-6-->
            </div><!--/row-->
        </div>
    </body>
</html>
