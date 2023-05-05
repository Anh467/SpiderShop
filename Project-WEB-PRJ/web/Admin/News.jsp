<%-- 
    Document   : News
    Created on : Mar 9, 2023, 9:58:01 AM
    Author     : ngocan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.News"%>
<%@page import="model.GetInfor"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script> 
        <title>JSP Page</title>
        <style>
            .left-news{
                border: 1px solid #a9aeb8;
                position: relative;
                padding: 20px;
                margin-top:2%;
                margin-bottom:10%;
            }
            .left-news h3{
                font-size: 18px;
                text-transform: uppercase;
                margin-bottom: 20px;
                padding-bottom: 10px;
                border-bottom: 2px solid #a9aeb8;
                text-align: center;
            }
            .left-news img{
                height:80px;
                width:80px
            }
            .left-news li{
                list-style: none;
                font-size: 15px;

            }</style>
    </head>
    <body>
        <div class="row justify-content-center col-md-12">
            <div class = "left col-md-3 col-sm-12 col-xs-12">
                <div class = "left-news">
                    <h3>News</h3>
                    <div class = "clearfix">
                        <jsp:useBean id="b" class="model.GetInfor" scope="request" />
                        <c:forEach items="${b.allNews}" var="i">         
                            <a style="text-decoration: none;" href="ShowNews?id=${i.getId()}" >${i.getTitle()}<br></a>
                        </c:forEach>
                    </div>
                </div>
                <div class = "left-news">
                    <h3>Blogs</h3>
                    <li>
                        <a style="text-decoration: none; " href="" title="Trang chủ" target="_self">
                            Trang chủ
                        </a>
                    </li>
                    <li> 
                        <a style="text-decoration: none; " href="" title="Giới thiệu" target="_self">
                            Giới thiệu
                        </a>
                    </li>
                    <li> 
                        <a style="text-decoration: none; " href="" title="Tin tức" target="_self">
                            Tin tức
                        </a>
                    </li>

                </div>
            </div>

            <div class="row col-md-9">
                
          <jsp:useBean id="a" class="Control.GetInfor" scope="request" />
                <c:forEach items="${a.allNews}" var="i">               
                    <jsp:include page="ContentSubJSP/BlockNews.jsp" >

                       <jsp:param name="id" value="${i.getId()}" />

                        <jsp:param name="title" value="${i.getTitle()}" />

                        <jsp:param name="img" value="${i.getImg()}" />
                        
                        <jsp:param name="describe" value="${i.getDescribe()}" />

                        <jsp:param name="author" value="${i.getAuthor()}" />

                        <jsp:param name="date" value = "${i.getDate()}" />

                    </jsp:include>
                </c:forEach>
            </div>

        </div>
    </body>
</html>
