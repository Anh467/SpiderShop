<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page import="model.AddressUser"%>
<%@page import="model.User"%> <%@page contentType="text/html" pageEncoding="UTF-8"%> 
<%@page import="javax.servlet.http.HttpSession"%> 
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title>USER</title>
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
            crossorigin="anonymous"
            />
        <style>
            .col-main {
                margin-top: 50px;
                margin-bottom: 50px;
            }
            .table-line {
                line-height: 2;
            }
            form{
                text-align: center;
            }
        </style>
        <script src="newjavascript.js"></script>
    </head>
    <body>

        <!-- header -->
        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div> 
        <%
            String id = (String) session.getAttribute("id");
            System.out.println("this is id: " + id);
            if (id == null || id == "") {
                System.out.println("null");
                request.getRequestDispatcher("LoginScreen.jsp").forward(request, response);
                return;
            }
        %> 
        <jsp:useBean id="inf" class="model.GetInfor"></jsp:useBean>
        <%
            String role = new model.GetInfor().getRole(id);
            if (role.trim().equalsIgnoreCase("admin")) {
                request.setAttribute("display", "block");
            } else {
                request.setAttribute("display", "none");
            }
        %>
        <%User user = inf.GetUser(id);%>
        <div class="main-container">
            <div class="row">
                <div class="col-md-6 col-main">
                    <jsp:include page="ContentSubJSP/UserBlock.jsp" >
                        <jsp:param name="id" value="<%=id%>" />
                    </jsp:include>
                </div>
                <!--address_id, user_id, phone_rec, addres_rec, name_rec;-->
                <div class="col-md-6 col-main">
                    <h2 style="text-align: center"><strong>Address</strong></h2>
                    <c:forEach items="${inf.getAddressUser(id.trim())}" var="ele">
                        <jsp:include page="ContentSubJSP/AddressBlock.jsp" >
                            <jsp:param name="address_id" value="${ele.address_id}" />
                        </jsp:include>
                    </c:forEach>
                    <div class="col-md col-main" style="text-align: center">
                        <div style="display: block;">
                            <button class="submit-item" type="submit" onclick="openNewWindow('ContentSubJSP/CreateAddress.jsp', '')"  value="update">Create</button>     
                        </div>
                    </div>
                </div>           
            </div>
        </div>

        <div class="row">
            <div class="col-6">
                <form action="CheckLogin" method="post">
                    <input type="hidden" value="<%=id%>" name="id">
                    <input type="submit" value="Logout">
                </form> 
            </div>
            <div class="col-6" style="display: flex; justify-content: center">
                <button style="display: ${display};" >
                    <a href="Admin/AdminDashBoard.jsp" style=" text-decoration: none;" >ADMIN PAGE</a>
                </button>

            </div>  
        </div>
        <!--test-->
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
            
        <c:set value="${5}" var="pagesize"></c:set>
            <!--declare usebean--> 
            
        <jsp:useBean id="billList" class="model.BillList"/>
        <c:if test="${!(billList.getA(id).size()<=0)}">
            <!--set value page-->
        <fmt:formatNumber type="Number" var="maxpage" value="${Math.ceil(billList.getA(id).size()/pagesize)}" ></fmt:formatNumber>
        <c:set value="${param.page}" var="page"></c:set>
        <c:if test="${(page==null)||(page<=0)}">
            <c:set value="${1}" var="page"></c:set>
        </c:if>
        <c:if test="${page> maxpage}">
            <c:set value="${maxpage}" var="page"></c:set>
        </c:if>
        <!--view-->
        <c:out value="Page: ${page}"></c:out>
            <!------>
        
            
         
            <jsp:useBean id="bill" class="model.BillAdd"/>
            <table class="a">
                <tr>
                    <th>ID</th>
                    <th>name</th>
                    <th>phone</th>
                    <th>address</th>
                    <th>date</th>
                    <th>Bill Detail</th>
                </tr>
                <c:forEach items="${billList.getA(id)}" var="bill" begin="${(page-1)*pagesize}" end="${page*pagesize-1}">
                    <tr>
                        <th>${bill.id2}</th>
                        <th>${bill.name}</th>
                        <th>${bill.phone}</th>
                        <th>${bill.address}</th>
                        <th>${bill.date}</th>
                        <th><button>
                                <a href="BillDetailForView.jsp?bill=${bill.id2}">view</a>
                            </button></th>


                    </tr>
                </c:forEach>
            </table>
            <div style="text-align: center">
            <a href="UserDetail.jsp?page=1"> << </a>
            <a href="UserDetail.jsp?page=${page-1}"> < </a>
            <a href="UserDetail.jsp?page=${page+1}"> > </a>
            <a href="UserDetail.jsp?page=${maxpage}"> >> </a>
        </div>
        </div>
        </c:if>   
        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>
    </body>
</html>
