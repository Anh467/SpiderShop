<%-- 
    Document   : ListNews
    Created on : Mar 15, 2023, 9:43:48 PM
    Author     : ngocan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.News"%>
<%@page import="model.GetInfor"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <title>JSP Page</title>
        <jsp:useBean id="a" class="model.GetInfor" scope="request" />
        <style>
            table{
                border:1px solid black;
                width: 100%;
                text-align: center;
            }
            td{
                border:1px solid black;

            }
            thead{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <table>
            <thead>
            <td>id</td>
            <td>title</td>
            <td>image</td>
            <td>describe</td>
            <td>author</td>
            <td>date</td>
            <td></td>
        </thead>
        <c:forEach items="${a.allNews}" var="i">    
            <tr>
                <td> ${i.id}</td>
                <td> ${i.title}</td>
                <td> ${i.img}</td>
                <td> ${i.describe}</td>
                <td> ${i.author}</td>
                <td> ${i.date}</td>
                <td>
                    <a href="../update?uid=${i.id}"><i class="fa-solid fa-pen-to-square"></i></a>
                    <a href="../delete?did=${i.id}"><i class="fa-solid fa-trash"></i></a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="AdminAddNews.jsp">Add News</a>   
</body>
</html>
