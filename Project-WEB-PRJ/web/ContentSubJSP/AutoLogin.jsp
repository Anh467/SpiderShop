<%-- 
    Document   : AutoLogin
    Created on : 5 thg 3, 2023, 09:22:11
    Author     : 84384
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            Cookie[] cookies = request.getCookies();
            try {
                for (Cookie aCookie : cookies) {
                    String name = aCookie.getName();
                    if (name.equals("id")) {
                        if (aCookie.getValue() != null) {
                            request.getRequestDispatcher("MainScreen.jsp").forward(request, response);
                        }
                    }
                }
            } catch (Exception e) {
            }

        %>
    </body>
</html>
