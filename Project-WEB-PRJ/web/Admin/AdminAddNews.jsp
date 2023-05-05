<%-- 
    Document   : AdminAddNews
    Created on : Mar 15, 2023, 9:21:22 PM
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
        <form action="../add" method="post">
            <table>
                <tr>
                    <td>Title</td>
                    <td><input name="title" type="text" value=""></td>
                    <td><p style = "${color_title}">${status_title}</p></td>
                </tr>  
                <tr>
                    <td>Link image</td>
                    <td><input name="img" type="text" value=""></td>
                    <td><p style = "${color_img}">${status_img}</p></td>
                </tr>
                <tr>
                    <td>Describe</td>
                    <td><input name="describe" type="text" value=""></td>
                    <td><p style = "${color_describe}">${status_describe}</p></td>
                </tr>
                <tr>
                    <td>Author</td>
                    <td><input name="author" type="text" value=""></td>
                    <td><p style = "${color_author}">${status_author}</p></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td><input name="date" type="date" value=""></td>
                   <td><p style = "${color_date}">${status_date}</p></td>
                </tr>
            </table>
            <input type="submit" value="submit">
            <p ></p>
        </form>

    </body>
</html>