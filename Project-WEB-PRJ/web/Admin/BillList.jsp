<%-- 
    Document   : BillList
    Created on : 20 thg 3, 2023, 19:36:00
    Author     : 84384
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.AddressUser"%>
<%@page import="model.User"%> <%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="javax.servlet.http.HttpSession"%> 
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            table.a {
                border-collapse: collapse;
                width: 100%;
                font-family: Arial, Helvetica, sans-serif;
            }

            table.a th {
                background-color: #ddd;
                border: 1px solid #000;
                padding: 10px;
                text-align: left;
            }

            table.a td {
                border: 1px solid #000;
                padding: 10px;
            }

            table.a tr:nth-child(even) {
                background-color: #f2f2f2;
            }

        </style>
        <div style=" width: 100%;" >
            <jsp:useBean id="billList" class="model.BillList"/>
            <jsp:useBean id="bill" class="model.BillAdd"/>
            <table class="a">
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th>phone</th>
                    <th>address</th>
                    <th>date</th>
                </tr>
                <c:forEach items="${billList.a}" var="bill">
                    <tr>
                        <th>${bill.id2}</th>
                        <th>${bill.name}</th>
                        <th>${bill.phone}</th>
                        <th>${bill.address}</th>
                        <th>${bill.date}</th>
                        <th><button>
                                <a href="BlockBillListDetail.jsp?bill=${bill.id2}">view</a>
                            </button></th>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
