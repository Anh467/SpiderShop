<%-- 
    Document   : UserBlock
    Created on : 5 thg 3, 2023, 19:10:48
    Author     : 84384
--%>

<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
            crossorigin="anonymous"
        ></script>
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

    </head>
    <body>
        <div>
            <%String id = request.getParameter("id");%>
            <jsp:useBean id="inf" class="model.GetInfor" scope="request"></jsp:useBean>
            <%User user = inf.GetUser(id);
            %>    
            <div class="row">
                <div class="col-md-4">
                    <img
                        src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ce/User-info.svg/1024px-User-info.svg.png"
                        alt="anh user tuong trung"
                        class="img-fluid"
                        />
                </div>
                <div class="col-md-8">
                    <h1>HI User: <%=id%></h1>

                    <table class="table-line">
                        <tr>
                            <td>Name</td>
                            <td>:<%=user.getUser_name()%></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>: <%=user.getUser_mail()%></td>
                        </tr>
                        <tr>
                            <td>Phone</td>
                            <td>: <%=user.getUser_phone()%></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>: <%=user.getUser_Gender()%></td>
                        </tr>
                        <tr>
                            <td>Date of birth</td>
                            <td>: <%=user.getUser_birth()%></td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>



        <!--logout-->


    </body>
</html>
