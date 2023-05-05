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
        <form action="adminupdate" method="post">
            <table>
            <tr>
            <th>
                Species
            </th>
            <td>
                <input type="radio" name="spec" value="Spider" ${up.name_cat=="Spider"?"checked":""}> SPI
            
            
                <input type="radio" name="spec" value="Scopion" ${up.name_cat=="Scopion"?"checked":""}> SCO
            
            
                <input type="radio" name="spec" value="Frog" ${up.name_cat=="Frog"?"checked":""}> FRO
            </td>
            </tr>
            <tr>
                <th>
                ID
            </th>
            <td>
                <input type="text" name="id_ani" value="${up.id_ani}" readonly>
            </td>
            <th>
                Genus <input type="text" name="gen" value="${up.genus}">
            </th>
            
            <th style=" text-align: center;">
                Species name <input type="text" name="name_spec" value="${up.species_name}"> 
            </th>
            <th style=" text-align: center;">
                Name  <input type="text" name="name" value="${up.name_ani}"> 
            </th>
            </tr>
            <tr>
            <th>
                Link img1
            </th>
            
            <td>
                <input type="text" name="img1" value="${up.getImg_url().get(0)}">
            </td>
            </tr>
            <tr>
            <th>
                Link img2
            </th>
            <td>
                <input type="text" name="img2" value="${up.getImg_url().get(1)}"> 
            </td>
            </tr>
            <tr>
            <th>
                Link img3
            </th>
            <td>
                <input type="text" name="img3" value="${up.getImg_url().get(2)}"> 
            </td>
            </tr>
            
            <tr>
                <th>
                    Price
                </th>
                <td>
                    Sling <input type="text" name="psling" value="${up.psling}">
                </td>
                <td>
                    Semili-mature <input type="text" name="psemili" value="${up.psemili_mature}">
                </td>
                <td>
                    Mature-Male <input type="text" name="pmale" value="${up.pmale_mature}">
                </td>
                <td>
                    Matuer-Female <input type="text" name="pfemale" value="${up.pfemale_mature}">
                </td>
            </tr>
            
        </table>
        <p>Text detail</p>
        <textarea name="detail" cols="50" rows="5">${up.detail}</textarea><br>
        <input type="submit" value="Submit">
        </form>
    </body>
</html>
