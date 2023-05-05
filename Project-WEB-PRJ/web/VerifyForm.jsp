<%-- 
    Document   : VerifyForm
    Created on : 23 thg 2, 2023, 15:36:26
    Author     : 84384
--%>
 
<%@page import="model.User" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <% User user=(User) session.getAttribute("user");
        
        %>
        <h1>Hello User <%=user.getUser_name()%></h1>
        <form action="Verify" method="post" >
            <p>check your email <%=user.getUser_mail()%></p>
            <input name="code" type="text" placeholder="enter code">
            <input type="submit" value="enter code">
        </form>

    </body>
</html>
