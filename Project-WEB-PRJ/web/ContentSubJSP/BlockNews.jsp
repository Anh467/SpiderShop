<%-- 
    Document   : BlockAni
    Created on : 4 thg 2, 2023, 14:33:08
    Author     : 84384
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        .blog-content{
            border-radius: 2px;
        }
        .blog-content img{
            width:100%;
            height: 215px;
            margin: 2%;
        }
    </style>
    <body>
        <%  String id = request.getParameter("id");
            String imgn_link = request.getParameter("img");
            String title = request.getParameter("title");
            String describe = request.getParameter("describe");
            String author = request.getParameter("author");
            String date = request.getParameter("date");
        %>
            <div class="blog-content">
                <div class="blog-post row col-md-12">
                    <div class="col-md-4">
                        <a href="ShowNews?id=<%=id%>" class="blog-post-thumbnail" title="<%=title%>" rel="nofollow" >
                            <img src="<%=imgn_link%>" alt="<%=title%>" >
                        </a>
                    </div>
                    <div class="col-md-8">
                        <h3 class="blog-post-title">
                            <a style="text-decoration: none;" href="ShowNews?id=<%=id%>" 
                               title="<%=title%>"><%=title%></a>
                        </h3>
                        <div class="blog-post-meta">   
                            <span class="author vcard">Author: <%=author%></span>
                            <br>
                            <span class="date">                
                                <time pubdate="" datetime="<%=date%>"><%=date%></time>
                            </span>
                        </div>
                        <p class="entry-content" id ="news"></p>
                    </div>
                </div>													
            </div>
        </form>
    
    </body>
</html>
