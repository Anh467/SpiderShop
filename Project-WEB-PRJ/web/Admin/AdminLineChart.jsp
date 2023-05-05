<%-- 
    Document   : AdminLineChart
    Created on : 16 thg 3, 2023, 17:29:33
    Author     : 84384
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--chart-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .chart{
                margin-left: 10%;
                margin-top: 2%;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="std" class="model.GetInfor" scope="request"/>
        <c:set var="dash" value="${std.dashBoard}"/>
        <c:set var="list_year_month_income" value="${dash.getList_income()}"/>
        <canvas class="chart" id="myChart" style="width:70%;max-width:1100px"></canvas>
        <!--chart line code-->
        <script>
            var xValues = [
                            <c:forEach items="${list_year_month_income}" var="hero">
                                '<c:out value="${hero.getIncome()}" />',
                            </c:forEach>];
            var yValues = [
                            <c:forEach items="${list_year_month_income}" var="hero">
                                '<c:out value="${hero.getYear_month()}" />',
                            </c:forEach>];

            new Chart("myChart", {
                type: "line",
                data: {
                    labels: yValues,
                    datasets: [{
                            data: xValues,
                            borderColor: "red",
                            fill: true
                        }]
                },
                options: {
                    legend: {display: false}
                }
            });
        </script>
    </body>
</html>
