<%-- 
    Document   : AddressUpdateSuccess
    Created on : 7 thg 3, 2023, 16:03:31
    Author     : 84384
--%>

<%@page import="model.AddressUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <style>
            body{
                width: 500px;
                height: 300px;
                border: 10px solid black;
            }
            h4{
                text-align: center;
            }
            div{
                justify-content: space-around;
            }
        </style>
    </head>
    <script>
            function closeWindow()
            {
                //   window.open("https://www.w3schools.com");
                window.close();
            }
            function do_st(MethodType){
                load_servlet(MethodType);
                closeWindow();
            }
            function load_servlet(MethodType) {
                document.getElementById('cal').action= "../AddressUpdate.jsp?id="+MethodType;
                document.getElementById('cal').submit();
            }
        </script>
    <body>
        <%
            String id_adress = request.getParameter("id");
        %>
         <jsp:useBean id="std" class="model.GetInfor"  scope="request"></jsp:useBean>
        <% AddressUser add = std.getSignleAddressUser(id_adress);%>
        <h4>Update address <%=id_adress%></h4>
        <form id="cal">
            <input type="hidden" value="<%=id_adress%>" name="id_address"> 
            <table>
                <tr>
                    <td>
                        Name
                    </td>
                    <td>                    
                        <input name="name" type="text" value="<%=add.getName_rec().trim()%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        Phone
                    </td>
                    <td>
                        <input name="phone" type="text" value="<%=add.getPhone_rec().trim()%>">
                    </td>
                </tr>
                <tr>
                    <td>
                        Address
                    </td>
                    <td>
                        <textarea name="address" type="text" value="<%=add.getAddres_rec().trim()%>" cols="45" rows="5">
                            <%=add.getAddres_rec()%>
                        </textarea>
                        
                    </td>
                </tr>
            </table>
            <div class="main-container align-bottom" style="display: flex; text-align: end;">
                <div>
                    <button style="width: 80px; height: 30px;"  class="align-bottom" onclick="load_servlet(<%=id_adress%>)">Change</button>
                </div>
                <div>

                    <button  style="width: 80px; height: 30px;" class="align-bottom"onclick="closeWindow()">
                        Done</button>
                </div>

            </div>
        </form>
    </body>
</html>
