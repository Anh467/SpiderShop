<%-- 
    Document   : newjsp
    Created on : Feb 16, 2023, 11:45:50 AM
    Author     : TCNJK
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
        <script src="js_cart/cart.js"></script>
        <title>Cart</title>s
        <style>
            .glow-on-hover {
                width: 220px;
                height: 50px;
                border: none;
                outline: none;
                color: #fff;
                background: #111;
                cursor: pointer;
                position: relative;
                z-index: 0;
                border-radius: 10px;
            }

            .glow-on-hover:before {
                content: "";
                background: linear-gradient(
                    45deg,
                    #ff0000,
                    #ff7300,
                    #fffb00,
                    #48ff00,
                    #00ffd5,
                    #002bff,
                    #7a00ff,
                    #ff00c8,
                    #ff0000
                    );
                position: absolute;
                top: -2px;
                left: -2px;
                background-size: 400%;
                z-index: -1;
                filter: blur(5px);
                width: calc(100% + 4px);
                height: calc(100% + 4px);
                animation: glowing 20s linear infinite;
                opacity: 0;
                transition: opacity 0.3s ease-in-out;
                border-radius: 10px;
            }

            .glow-on-hover:active {
                color: #000;
            }

            .glow-on-hover:active:after {
                background: transparent;
            }

            .glow-on-hover:hover:before {
                opacity: 1;
            }

            .glow-on-hover:after {
                z-index: -1;
                content: "";
                position: absolute;
                width: 100%;
                height: 100%;
                background: #111;
                left: 0;
                top: 0;
                border-radius: 10px;
            }

            @keyframes glowing {
                0% {
                    background-position: 0 0;
                }
                50% {
                    background-position: 400% 0;
                }
                100% {
                    background-position: 0 0;
                }
            }
            th, td {
                padding: 5px;
                text-align: center;
            }

            .next {
                height: 100px;
                width: auto;
            }

            .button > .minus,
            .button > .plus {
                width: 25px;
            }

            .button > .number {
                padding: 4%;
            }

            .button {
                cursor: pointer;
            }

            body {
                background-color: rgb(192, 192, 192);
            }

            .col-sm-8 {
                background-color: rgb(255, 255, 255);
                display: flex;
                align-items: center;
            }

            table {
                width: 100%;
                border-collapse: collapse;
            }

            table td,
            table th {
                padding: 8px;
                border: 1px solid #ddd;
            }

            table tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            table tr:hover {
                background-color: #ddd;
            }

            table th {
                background-color: #626262;
                color: white;
            }
            table[name="sanpham"] td {
                width: auto !important;
                height: auto !important;
                padding: 10px;
                box-sizing: border-box;
            }
            .number,.number2,.number3,.number4 {
                width: 50px;
                height: 30px;
            }
        </style>
    </head>
    <div>
        <%@include file="ContentSubJSP/header.jsp" %>
    </div> 
    <body style="background-color: rgb(192, 192, 192);">
        <% String id = (String) session.getAttribute("id");
            if ((id == null) || (id.equals(""))) {
                response.sendRedirect("LoginScreen.jsp");
            }
            request.setAttribute("id", id);
        %>
        <jsp:useBean id="aniCart" class="model.CartAni"/>
        <jsp:useBean id="list" class="model.CartUser"/> 
        <div class="container-fluid" >
            <div class="row">
                <div class="col-sm-1"></div>
                <div class="col-sm-10" style="background-color:rgb(255, 255, 255);" style="display: flex; align-items: center;">
                    <table>
                        <tr>
                            <th><input type="checkbox" id="check-all"></th>
                            <th style="width: 25%; text-align: left;" >Sản Phẩm</th>
                            <th style="width: 15.88022%;">Đơn Giá</th>
                            <th style="width: 36.70599;">Số Lượng</th>
                            <th style="width: 10.43557%;">Số Tiền</th>
                            <th style="width: 12.70417%;">Thao Tác</th>
                        </tr>

                        <c:forEach items="${list.getList(id)}" var="aniCart" >
                            <tr>
                            <span hidden class="idU">${aniCart.userId}</span>

                            <span hidden class="idA">${aniCart.aniId}</span>
                            <td><input type="checkbox" name="checkSP" id="${aniCart.aniId}"></td>
                            <td>
                                <table name="sanpham">
                                    <tr>
                                        <td>
                                            <a title="${aniCart.titleAni}">
                                                <div style=" width: 100px;
                                                     height: 100px;
                                                     background-size: 100px 100px;
                                                     background-image: url(${aniCart.imgUrl});
                                                     display: block;">
                                                </div>
                                            </a>
                                        </td>
                                        <td>
                                            <div class="next"style="display: inline " >
                                                <a title=${aniCart.titleAni} style="text-decoration: none;">${aniCart.titleAni}
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <span class="numberR">${aniCart.rootMoney}</span><br>
                                <span class="numberR2">${aniCart.rootMoney2}</span><br>
                                <span class="numberR3">${aniCart.rootMoney3}</span><br>
                                <span class="numberR4">${aniCart.rootMoney4}</span>

                            </td>
                            <td>
                                <div class="button" id="buy">
                                    <button class="minus" style="display: inline" onclick="minus(${aniCart.stt}, 'number', 'numberR')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                                        </svg>
                                    </button>
                                    <input size="1" type="text" style="display: inline" class="number " id="number" value="${aniCart.aniNumber}" onkeypress="handleKeyPress(event, 'number',${aniCart.stt})"/>

                                    <button class="plus" onclick="plus(${aniCart.stt}, 'number', 'numberR')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                        </svg>
                                    </button>
                                </div>
                                <div class="button" id="buy2">
                                    <button class="minus" style="display: inline" onclick="minus(${aniCart.stt}, 'number2', 'numberR2')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                                        </svg>
                                    </button>
                                    <input  size="1" type="text" style="display: inline" class="number2" id="number2" value="${aniCart.aniNumber2}" onkeypress="handleKeyPress(event, 'number2',${aniCart.stt})"/>

                                    <button class="plus" onclick="plus(${aniCart.stt}, 'number2', 'numberR2')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                        </svg>
                                    </button>
                                </div>
                                <div class="button" id="buy3">
                                    <button class="minus" style="display: inline" onclick="minus(${aniCart.stt}, 'number3', 'numberR3')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                                        </svg>
                                    </button>
                                    <input  size="1" type="text" style="display: inline" class="number3" id="number3" value="${aniCart.aniNumber3}" onkeypress="handleKeyPress(event, 'number3',${aniCart.stt})"/>

                                    <button class="plus" onclick="plus(${aniCart.stt}, 'number3', 'numberR3')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                        </svg>
                                    </button>
                                </div>
                                <div class="button" id="buy4">
                                    <button class="minus" style="display: inline" onclick="minus(${aniCart.stt}, 'number4', 'numberR4')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 12h-15" />
                                        </svg>
                                    </button>
                                    <input  size="1" type="text" style="display: inline" class="number4" id="number4" value="${aniCart.aniNumber4} " onkeypress="handleKeyPress(event, 'number4',${aniCart.stt})"/>

                                    <button class="plus" onclick="plus(${aniCart.stt}, 'number4', 'numberR4')">
                                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="2.5" stroke="currentColor" class="w-6 h-6">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M12 4.5v15m7.5-7.5h-15" />
                                        </svg>
                                    </button>
                                </div>        

                            </td>
                            <td>
                                <span style="display: none">
                                </span>
                                <span class="money">
                                    ${aniCart.sumMoney}
                                </span>
                            </td>


                            <form name="deleteForm" action="DeleteAniInCart?id=${aniCart.aniId}">
                                <td>
                                    <button class="glow-on-hover" onclick="confirmDelete('${aniCart.aniId}')">
                                        <a style="text-decoration: none; color: white">Xoa</a>
                                    </button>
                                </td>
                            </form>
                            </tr>
                        </c:forEach>
                        <script>
                            const checkAll = document.getElementById("check-all");
                            const checkboxes = document.querySelectorAll("input[type='checkbox']");

                            checkAll.addEventListener("click", function () {
                                checkboxes.forEach(function (checkbox) {
                                    checkbox.checked = checkAll.checked;
                                }
                                );
                            }
                            );

                            var dataInput = document.getElementById('data');

                            checkboxes.forEach(function (checkbox) {
                                checkbox.addEventListener('change', function () {
                                    if (this.checked) {
                                        callServletBill();
                                    } else {
                                        callServletBill();
                                    }
                                });
                            });
                        </script>
                    </table>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
        <div style="text-align: center;">
            <button class="glow-on-hover">
                <a style="text-decoration: none; color: white" href="add.jsp">ADD</a>
            </button>
            <!--<a href="add.jsp">add</a>-->
        </div >
        <div style="text-align: center; margin-top: 2%">
            <button class="glow-on-hover" onclick="callServletSave()">
                <a style="text-decoration: none; color: white" href="#">SAVE</a>
            </button>
        </div>
        <div style="text-align: center; margin-top: 2%">
            <form method="POST" action="bill">
                <button class="glow-on-hover" >
                    <input type="hidden" id="data" name="data">
                    <a style="text-decoration: none; color: white" href="#">BILL</a>
                </button>
            </form>
        </div>

        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>
    </body>
    <script>
        function callServletBill() {
            var checkboxes = document.getElementsByName("checkSP");
            var data = {
                idUser: [],
                idAni: []
            };

            for (let i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i].checked) {
                    data.idUser.push(idU[i].innerText);
                    data.idAni.push(checkboxes[i].id);
                }
            }
            document.getElementById("data").value = JSON.stringify(data);
        }
        ;
    </script>
</html>
