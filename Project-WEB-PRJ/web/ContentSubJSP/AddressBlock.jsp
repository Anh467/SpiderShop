<%-- 
    Document   : AddressBlock
    Created on : 5 thg 3, 2023, 19:25:58
    Author     : 84384
--%>

<%@page import="model.AddressUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <script>
        function load_servlet2(id, name, address) {
            if(confirm('Are you sure you want to delete?\n'+name+"\n"+address))
                document.getElementById(id).submit();
        }
        function openNewWindow(st, address_id)
        {
            //   window.open("https://www.w3schools.com");
            window.open(st + address_id, "", "width=600px; height=400;");
        }
    </script>
    <style>
        p{
            text-align: start;
        }
        .submit-item{
            margin-bottom: 15px;
            border-radius: 10px;
            width: 70px;
            height: 30px;
        }
    </style>
    <body>
        <!--address_id, user_id, phone_rec, addres_rec, name_rec;-->
        <%
            String address_id = request.getParameter("address_id");
            String id = (String) session.getAttribute("id");
            System.out.println("this is id: " + id);
            if (id == null) {
                System.out.println("null");
                request.getRequestDispatcher("LoginScreen.jsp").forward(request, response);
                return;
            }
        %>
        <jsp:useBean id="std" class="model.GetInfor"  scope="request"></jsp:useBean>
        <% AddressUser add = std.getSignleAddressUser(address_id);%>
        <form id="cal<%=address_id%>" method="post" action="UpdateAddress">
            <input type="hidden" value="<%=address_id%>" name="id_address" >
            <div class="row">
                <div class="col-md-7">
                    <table>
                        
                        <tr>
                            <td>
                                <p><strong><%=address_id%></strong> <strong><%=add.getName_rec().trim()%></strong> <%=add.getPhone_rec().trim()%></p>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <p><%=add.getAddres_rec().trim()%></p>
                            </td>
                        </tr>
                        <tr>

                        </tr>
                    </table>
                </div> 
                <div class="col-md-2">

                </div>
                <div class="col-md-3">
                    <div style="display: block;">
                        <input value="update" class="submit-item" type="button" onclick="openNewWindow('ContentSubJSP/AddressUpdate.jsp', '?id=<%=address_id%>')">
                    </div>
                    <div style="display: block;">
                        <input value="delete" class="submit-item" type="button" onclick="load_servlet2('cal'+<%=address_id%>,'<%=add.getName_rec().trim()%> <%=add.getPhone_rec().trim()%>', '<%=add.getAddres_rec().trim()%>')">
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>
