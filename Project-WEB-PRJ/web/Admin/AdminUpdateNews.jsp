<%-- 
    Document   : AdminUpdateNews
    Created on : Mar 16, 2023, 9:00:31 PM
    Author     : ngocan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="update" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td>
                        <input value="${update.id}" type="text" name="id" readonly>
                    </td>
                </tr>
                <tr>
                    <td>Title:</td>
                    <td>
                        <input value="${update.title}" type="text" name="title">
                    </td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td>
                        <input value="${update.img}" type="text" name="img">
                    </td>
                </tr>
                <tr>
                    <td>Describe:</td>
                    <td>
                         <input value="${update.describe}" type="text" name="describe">
                    </td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td><input value="${update.author}" type="text" name="author"></td>
                </tr>
                <tr>

                <tr>
                    <td>Date</td>
                    <td><input value="${update.date}" type="date" name="date"></td>
                </tr>
                <tr>
                    <td></td>
                    <td><button type="submit">Update</button></td>
                </tr>
            </table>
        </form>
    </body>
</html>
