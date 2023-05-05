<%-- 
    Document   : admin_CRUD
    Created on : Mar 15, 2023, 8:52:03 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                background-image: url("");
                background-size: cover;
                background-repeat: no-repeat;
            }
            body {
                font-family: Arial, sans-serif;
            }

            table {
                width: 100%;
                border-collapse: collapse;
                margin: 20px 0;

            }

            th, td {
                padding: 8px;
                text-align: left;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
            }

            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            .button {
                background-color: #4CAF50;
                border: none;
                color: white;
                padding: 15px 32px;
                text-align: center;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 5px;
                transition-duration: 0.4s;
            }

            .button:hover {
                box-shadow: 0 12px 16px 0 rgba(0,0,0,0.24),0 17px 50px 0 rgba(0,0,0,0.19);
            }

            .space{
                height: 50px;
            }
            tr:hover {
                background-color: aquamarine;
            }
        </style>
    </head>
    <body>
        <table>
            <tr>
                <th>
                    ID
                </th>
                <th>
                    Species
                </th>
                <th>
                    Name
                </th>
                <th>
                    Name science
                </th>
                <th>
                    Quantity in warehouse.
                </th>
                <th>
                </th>
                <th>
                </th>
            </tr>
            <jsp:useBean id="a" class="model.GetInfor"/>
            <c:forEach var="e" items="${a.allAniAdmin}">
                <tr>
                    <td>
                        ${e.id_ani}
                    </td>
                    <td>
                        ${e.name_cat}
                    </td>
                    <td>
                        ${e.name_ani}
                    </td>
                    <td>
                        ${e.scient_name}
                    </td>
                    <td >
                        ${e.getQuantity()}
                    </td>
                    <td>
                        <a href="../admindelete?id_ani=${e.id_ani}" style="text-decoration: none; font-size: larger;"><i class="fa-solid fa-trash-can-list">&#128465;</i></a>
                    </td>
                    <td>
                        <a href="../adminupdate?id_ani=${e.id_ani}" style="text-decoration: none;"><i class="fa-solid fa-trash-can-list">&#9881;</i></a>
                    </td>
                </tr>

            </c:forEach>
            <tr>
                <td style="background-color: #4CAF50; text-align: center;"><a href="Admin_CR.jsp" style="padding: 0 45%; color: white; text-decoration: none;font-size: larger; font-weight: bold;">+</a></td>
            </tr>
        </table>
    </body>
</html>
