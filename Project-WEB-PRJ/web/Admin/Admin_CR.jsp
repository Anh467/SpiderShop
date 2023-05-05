<%-- 
    Document   : admin_CR
    Created on : Mar 16, 2023, 9:08:49 AM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            table{
                width: 100%;
            }
            body{
                text-align: center;
                font-size: larger;
            }
            th{
                text-align: right;
            }
        </style>
    </head>
    <body>
        <form action="../admincreate" method="post">
            <table>
                <tr>
                    <th>
                        Species
                    </th>
                    <td>
                        <input type="radio" name="spec" value="Spider"> SPI


                        <input type="radio" name="spec" value="Scopion"> SCO


                        <input type="radio" name="spec" value="Frog"> FROG
                    </td>
                </tr>
                <tr>
                    <th>
                        ID
                    </th>
                    <td>
                        <input type="text" name="id_ani" value="">
                    </td>
                    <th>
                        Genus <input type="text" name="gen" value="">
                    </th>

                    <th style=" text-align: center;">
                        Species name <input type="text" name="name_spec" value=""> 
                    </th>
                    <th style=" text-align: center;">
                        Name  <input type="text" name="name" value=""> 
                    </th>
                </tr>
                <tr>
                    <th>
                        Link img1
                    </th>

                    <td>
                        <input type="text" name="img1" value="">
                    </td>
                </tr>
                <tr>
                    <th>
                        Link img2
                    </th>
                    <td>
                        <input type="text" name="img2" value=""> 
                    </td>
                </tr>
                <tr>
                    <th>
                        Link img3
                    </th>
                    <td>
                        <input type="text" name="img3" value=""> 
                    </td>
                </tr>

                <tr>
                    <th>
                        Price
                    </th>
                    <td>
                        Sling <input type="text" name="psling" value="">
                    </td>
                    <td>
                        Semili-mature <input type="text" name="psemili" value="">
                    </td>
                    <td>
                        Mature-Male <input type="text" name="pmale" value="">
                    </td>
                    <td>
                        Matuer-Female <input type="text" name="pfemale" value="">
                    </td>
                </tr>
                <tr>
                    <th>
                        Quantity
                    </th>
                    <td>
                        Sling <input type="text" name="Qsling" value="">
                    </td>
                    <td>
                        Semili-mature <input type="text" name="Qsemili" value="">
                    </td>
                    <td>
                        Mature-Male <input type="text" name="Qmale" value="">
                    </td>
                    <td>
                        Matuer-Female <input type="text" name="Qfemale" value="">
                    </td>
                </tr>
            </table>
            <p>Text detail</p>
            <textarea name="detail" cols="50" rows="5"></textarea><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
