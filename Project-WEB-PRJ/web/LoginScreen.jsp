<%-- 
    Document   : LoginScrean.
    Created on : 13 thg 2, 2023, 20:40:10
    Author     : 84384
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
        <style>

            .login-form{
                
                background-repeat: none;
                background-size: 100%;

            }
            .user_card{
                background-image: url(https://i.etsystatic.com/40485878/r/il/75b8fd/4590035051/il_570xN.4590035051_8tlt.jpg);
                margin-top: 1.5%;
                margin-bottom: 11%;
                background-color:#bebebf ;
                padding: 10px;
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
                border-radius: 5px;
                border: 1px solid black;


            }
            .user_card .logo img{
                height: 100px;
                width:  100px;
                background: #666666;
                border-radius: 5px 40px;
            }
            .login_btn {
                width: 100%;
                background: #666666 ;
                color: white ;
            }
            .login_btn:focus {
                box-shadow: none ;
                outline: 0px;
            }

        </style>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies();
            try {
                for (Cookie aCookie : cookies) {
                    String name = aCookie.getName();
                    if (name.equals("id")) {
                        if (aCookie.getValue() != null) {
                            session.setAttribute("id", aCookie.getValue());
                            request.getRequestDispatcher("MainMenu.jsp").forward(request, response);
                        }
                    }
                }
            } catch (Exception e) {
            }

        %>

        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>  
        <div style="background-image: url(https://i.pinimg.com/originals/a8/9c/c3/a89cc3305abbfd2fd35c01bde2d47253.jpg);">
            <%@include file="Another.html" %>
            <div class="login-form h-100">

                <div class="d-flex justify-content-center h-100">


                    <div class="user_card" style="">

                        <div class="d-flex justify-content-center">
                            <div class="logo">
                                <img src="image/logorm.png" class="brand_logo" alt="Logo">
                            </div>
                        </div>
                        <div class="d-flex justify-content-center form_container">

                            <!--form-->    
                            <form action="CheckLogin" method="get">
                                <div class="mb-2 mt-3">
                                    <input type="text" name="user" class="form-control" value="${user}" placeholder="Username">
                                </div>
                                <div class="mb-2">
                                    <input type="password" name="pass" class="form-control" value="${pass}" placeholder="Password">
                                </div>
                                <div>
                                    <div>
                                        <input type="checkbox" value="1" name="check">
                                        <label>Remember me</label>
                                    </div>
                                </div>

                                <div class="d-flex justify-content- center mt-3 login_container" style="background-color: #055160; opacity: 70%" >
                                    <input style="color:  black" type="submit" name="button" value="login" class="btn login_btn">

                                </div>

                                <p name="status" style="color: ${color};">${status}</p>
                            </form>
                            <!--/form-->    

                        </div>
                        <div class="mt-3">
                            <div class="d-flex justify-content-center links">
                                Don't have an account? 
                                <a href="SignUp.jsp">Sign Up</a>
                            </div>
                            <div class="d-flex justify-content-center links">
                                <a href="ForgotPass.jsp">Forgot your password?</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>

    </body>
</html>
