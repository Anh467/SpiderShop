<%-- 
    Document   : add
    Created on : Mar 5, 2023, 4:39:41 PM
    Author     : TCNJK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADD CART</title>
    </head>
    <body>
        <% String id = (String) request.getAttribute("id");
            request.setAttribute("id", id);
        %>
        <form action="submitValues" method="POST">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>SPID</th>
                        <th>Number 1</th>
                        <th>Number 2</th>
                        <th>Number 3</th>
                        <th>Number 4</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="text" name="userId" value="${id}"></td>
                        <td><input type="text" name="spid"></td>
                        <td><input type="text" name="num1" value="0"></td>
                        <td><input type="text" name="num2" value="0"></td>
                        <td><input type="text" name="num3" value="0"></td>
                        <td><input type="text" name="num4" value="0"></td>
                    </tr>
                    <tr> <td><input type="submit" value="Submit"></td></tr>
                </tbody>
            </table>

        </form>

    </body>
</html>
