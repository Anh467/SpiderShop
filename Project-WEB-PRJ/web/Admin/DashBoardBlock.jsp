<%-- 
    Document   : DashBoardBlock
    Created on : 15 thg 3, 2023, 22:50:44
    Author     : 84384
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--fontawesome kit code-->
        
        <title>JSP Page</title>
        <style>
            .shadow-div {
                box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
                height: 0;
                width:94%;
                padding-bottom:40%;
                margin: 3%;
            }
            .center-div {

            }
            div{
                text-align: center;
            }
            .search_icon{
                height: 50px;
            }
            .contain_icon{
                margin-top: 4%;

            }
            .number_display{
                margin-top: 8%;
                font-size: 20px;
            }
            .contain_icon{
                padding-left: 5%;
            }
            .content{
                margin-top: 4%;
            }
        </style>
    </head>
    <body> 
        <!--first:
        {icon} fa-solid fa-circle-dollar-to-slot
        {text} Revenue all time you work-->

        <!--second: 
        {icon} fa-solid fa-cart-shopping
        {text} Number product per month
        
        <!--third: 
        {icon} fa-solid fa-money-bills
        {text} Income per month
        
        <!--fourth:
        {icon} fa-solid fa-user
        {text} number of user-->
        <c:set value="${param.icon}" var="icon"/>
        <c:set value="${param.content}" var="content"/>
        <c:set value="${param.num}" var="num"/>
        <div class="shadow-div" style="">
            <div class="center-div row" style="">
                <div class="col-sm-5 contain_icon">  
                    <a href="#" class="">
                        <i class="search_icon fa-5x ${icon}"></i>
                    </a>
                </div>
                <div class="col-sm-7 number_display">  
                    <p>${num}</p>
                </div>
                <div class="content">
                    <p>${content}</p>
                </div> 
            </div>
        </div>
    </body>
</html>
