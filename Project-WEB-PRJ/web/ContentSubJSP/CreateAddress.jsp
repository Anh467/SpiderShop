<%-- 
    Document   : CreateAddress
    Created on : 7 thg 3, 2023, 05:29:58
    Author     : 84384
--%>
<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        function load_servlet3(MethodType) {
                document.getElementById('cal3').action= "../CreateAddress";
                document.getElementById('cal3').method= MethodType;
                document.getElementById('cal3').submit();
            }
    </script>
    <body>
        <%
                String id = (String) session.getAttribute("id");
                System.out.println("this is id: "+id);
                if (id == null) {
                    System.out.println("null");
                    request.getRequestDispatcher("LoginScreen.jsp").forward(request, response);
                    return;
                }
        %>
        <jsp:useBean id="std" class="model.GetInfor"  scope="request"></jsp:useBean>
        <%User user= (User) std.GetUser(id);%>
        <form id="cal3">
            <input type="hidden" value="<%=id%>" name="id"> 
            <table>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>                    
                        <input name="name" type="text" value="<%=user.getUser_name()%>" placeholder="Enter name">
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone
                    </td>
                    <td>
                        <input name="phone" type="text" value="<%=user.getUser_phone()%>" placeholder="Enter phone">
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <textarea name="address" type="text" value="" cols="45" rows="5" placeholder="Enter addres">
                        </textarea>
                        
                    </td>
                </tr>
            </table>
            <div class="main-container align-bottom" style="display: flex; text-align: end;">
                <div>
                    <button style="width: 80px; height: 30px;" class="align-bottom"onclick="load_servlet3('GET')">
                        Commit</button>
                </div>
            </div>
        </form>
    </body>
</html>
