<%-- 
    Document   : ShowNews
    Created on : Mar 15, 2023, 8:57:22 PM
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
        <title>JSP Page</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>   
    </head>
    <style>
        .image-column img{
            width: 100%;
            height:100%;
            border-radius: 5px;
        }
        .container {
            margin-top:2%;
            display: flex;    
        }
        .text-column {
            margin-left:1%;
        }
    </style>
    <body>
        <div class = "text-center" style="font-family: cursive; ">
            <h1> ${detail.getTitle()}</h1>
        </div>
        <div class = "text-center"  style="font-family: cursive;"> By ${detail.getAuthor()} | Filed ${detail.getDate()}</div>
        <div class="container col-md-12 "  style="font-family: cursive;">
            <div class="image-column col-md-6">
                <img src="${detail.getImg()}" alt="Image description">
            </div>
            <div class="text-column col-md-6">
                <p>${detail.getDescribe()}</p>
            </div>
        </div>
    </body>
</html>
