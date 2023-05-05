<%-- 
    Document   : Spider
    Created on : 4 thg 2, 2023, 14:52:47
    Author     : 84384
--%>

<%@page import="model.Ani"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .ani-block{
                width: 100%;

            }
        </style>
    </head>
    <body>
        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>
        <%
            String ani = (String) request.getAttribute("type");
            String icon = "";
            if (ani != null) {

                if (ani.equalsIgnoreCase("Spider")) {
                    icon = "&#128375;";
                } else if (ani.equalsIgnoreCase("Frog")) {
                    icon = "&#128056;";
                } else if (ani.equalsIgnoreCase("Scorpion")) {
                    icon = "&#129410;";
                }
            } else {
                ani = "";
            }
            ArrayList<Ani> std
                    = (ArrayList<Ani>) request.getAttribute("AniListData");
            System.out.println("size of ani list: " + std.size());
            System.out.println("length: " + std.size());
            if (std.size() == 0){
                String search= (String) request.getAttribute("search");
                request.setAttribute("search", search);
                request.setAttribute("display", "block");
            }
            else
                request.setAttribute("display", "none");
        %>
        <h2 style="text-align: center; padding:  2%; font-family: cursive; font-size: 5vw; color: white;"><%= ani + " " + icon%></h2>
        <div class="row">
            <div style="text-align: center; font-size: 100px; display: ${display}">No research for ${search}</div>
            <div class="row col-md-12">
                <%
                    for (int i = 0; i < std.size(); i++) {%>
                <div class="row col-md-3" style="margin: 0;">

                    <div class=".ani-block">
                        <%try {%>
                        <jsp:include page="ContentSubJSP/BlockAni.jsp" >
                            <jsp:param name="id" value="<%=std.get(i).getId_ani()%>" />

                            <jsp:param name="img_link1" value="<%=std.get(i).getImg_url().get(0)%>" />

                            <jsp:param name="img_link2" value="<%=std.get(i).getImg_url().get(1)%>" />

                            <jsp:param name="price" value="<%=std.get(i).getPrice()[0]%>" />

                            <jsp:param name="name" value="<%=std.get(i).getName_ani()%>" />

                        </jsp:include>
                        <%} catch (Exception e) {
                                e.printStackTrace();
                                System.out.println("this is id wrong: " + std.get(1).getId_ani());
                            }%>

                    </div>
                </div>
                <%}%>
            </div>   
        </div>

        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>

    </body>
</html>