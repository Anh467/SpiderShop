<%-- 
    Document   : BillDetailForView
    Created on : 21 thg 3, 2023, 01:40:24
    Author     : 84384
--%>
<%@page import="model.BillDetailForView"%>
<%@page import="model.GetInfor"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>IRCN V - Exotic pets shop</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
            integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="https://cdn.leanhduc.pro.vn/utilities/animation/shake-effect/style.css" />
        <!-- Bootstrap -->
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
        <style>
            .blog-content{
                border-radius: 2px;
            }
            img{
                width:50%;
                height: auto;
                margin: 2%;
            }

            table{
                border:1px solid black;
                width: 100%;
                text-align: center;
            }
            td{
                border:1px solid black;
                width: 17%;
            }
            thead{
                text-align: center;
            }

        </style>
    </head>
    <body>
        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>
        <c:set var="bill_id" value="${param.bill}"></c:set>
        <c:set var="total" value="${0}"></c:set>
        <jsp:useBean id="detail" class="model.GetInfor"></jsp:useBean> 
            <table>
                <td>
                    <p>Source image</p>
                </td>
                <td>    
                    <p>name ani</p>
                </td>
                <td>    
                    <p>number sling</p>
                </td>
                <td>
                    <p>number semili</p>
                </td>
                <td>
                    <p>number male</p>
                </td>
                <td>
                    <p>number female</p>
                </td>
                <td>
                    <p>${i.total}</p>
            </td>

            <c:forEach var="i" items="${detail.getBillDetailForView(bill_id)}" >
                <tr>

                    <td>
                        <img src="${i.img_link.get(0)}" alt="${i.name_ani}" />
                    </td>
                    <td>    
                        <p>${i.name_ani}</p>
                    </td>
                    <td>    
                        <p>${i.num_sling}</p>
                    </td>
                    <td>
                        <p>${i.num_semili}</p>
                    </td>
                    <td>
                        <p>${i.num_male}</p>
                    </td>
                    <td>
                        <p>${i.num_female}</p>
                    </td>
                    <td>
                        <p>${i.total}</p>
                    </td>
                </tr>
                <c:set var="total" value="${total+i.total}"></c:set>
            </c:forEach> 
        </table>
            <div style="text-align: center">
                Total Bill: ${total}
            </div>
        <div>
            <button>
                <a href="UserDetail.jsp">Back</a>
            </button>
        </div>
        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>

    </body>
</html>
