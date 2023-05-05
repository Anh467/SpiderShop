<%-- 
    Document   : createBill
    Created on : Mar 19, 2023, 4:58:47 PM
    Author     : TCNJK
--%>

<%@page import="model.BillAddress.AddressList"%>
<%@page import="model.BillAddress.Address"%>
<%@page import="model.BillChecked"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.BillCheckList"%>
<%@page import="org.json.JSONArray"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Leaflet Search</title>
        <link rel="stylesheet" href="bootstrap-5.0.2-dist/css/bootstrap.min.css">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.css" />
        <link rel="stylesheet" href="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.css" />
        <style>
            #map {
                height: 500px;
                width: 500px;
            }
            #map {
            }

            table {
            }
            /* CSS */
            .button-33 {
                background-color: #c2fbd7;
                border-radius: 100px;
                box-shadow: rgba(44, 187, 99, .2) 0 -25px 18px -14px inset,rgba(44, 187, 99, .15) 0 1px 2px,rgba(44, 187, 99, .15) 0 2px 4px,rgba(44, 187, 99, .15) 0 4px 8px,rgba(44, 187, 99, .15) 0 8px 16px,rgba(44, 187, 99, .15) 0 16px 32px;
                color: green;
                cursor: pointer;
                display: inline-block;
                font-family: CerebriSans-Regular,-apple-system,system-ui,Roboto,sans-serif;
                padding: 7px 20px;
                text-align: center;
                text-decoration: none;
                transition: all 250ms;
                border: 0;
                font-size: 16px;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
            }

            .button-33:hover {
                box-shadow: rgba(44,187,99,.35) 0 -25px 18px -14px inset,rgba(44,187,99,.25) 0 1px 2px,rgba(44,187,99,.25) 0 2px 4px,rgba(44,187,99,.25) 0 4px 8px,rgba(44,187,99,.25) 0 8px 16px,rgba(44,187,99,.25) 0 16px 32px;
                transform: scale(1.05) rotate(-1deg);
            }
        </style>
    </head>

    <body>
        <form action="addBill" method="Post">
            <div class="container">
                <div class="left-column">
                    <%AddressList address = (AddressList) request.getAttribute("address");
                        ArrayList<Address> listAddress = address.getList();
                    %>
                    <table>
                        <tr>
                        <select id="listName"  onchange="updateName()">
                            <option value="NAME">NAME</option>

                            <%
                                for (Address elem : listAddress) {

                            %>
                            <option value="<%=elem.getName()%>"><%=elem.getName()%></option>
                            <%
                                }
                            %>
                        </select>
                        <select id="listPhone"  onchange="updatePhone()">
                            <option value="PHONE">PHONE</option>

                            <%
                                for (Address elem : listAddress) {

                            %>
                            <option value="<%=elem.getPhone()%>"><%=elem.getPhone()%></option>
                            <%
                                }
                            %>
                        </select>
                        <select id="listAddress"  onchange="updateAddress()">
                            <option value="ADDRESS">ADDRESS</option>

                            <%
                                for (Address elem : listAddress) {

                            %>
                            <option value="<%=elem.getAddress()%>"><%=elem.getAddress()%></option>
                            <%
                                }
                            %>
                        </select>
                        <script>
                            function updateName() {
                                var selectBox = document.getElementById("listName");
                                var inputBox = document.getElementById("name");
                                var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                                inputBox.value = selectedValue;
                            }
                            function updatePhone() {
                                var selectBox = document.getElementById("listPhone");
                                var inputBox = document.getElementById("phone");
                                var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                                inputBox.value = selectedValue;
                            }
                            function updateAddress() {
                                var selectBox = document.getElementById("listAddress");
                                var selectedValue = selectBox.options[selectBox.selectedIndex].value;
                                document.querySelectorAll('input')[2].value = selectedValue;
                                document.getElementById("address").value = selectedValue;
                            }

                        </script>
                        <td><p></p></td>
                        </tr>
                        <tr>
                            <td><label for="name">Name:</label></td>
                            <td><input type="text" id="name" name="name" required></td>
                        </tr>
                        <tr>
                            <td><label for="phone">Phone:</label></td>
                            <td><input type="tel" id="phone" name="phone" required></td>
                        </tr>

                    </table>
                    <div id="map"></div>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/leaflet.js"></script>
                    <script src="https://unpkg.com/leaflet-control-geocoder/dist/Control.Geocoder.js"></script>
                    <script>
                            const map = L.map('map').setView([51.505, -0.09], 13);
                            let currentMarker;

                            L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
                                attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors',
                                maxZoom: 18,
                            }).addTo(map);

                            const searchControl = L.Control.geocoder({
                                collapsed: false,
                                placeholder: 'Search for a location...',
                                defaultMarkGeocode: false,
                            }).on('markgeocode', (e) => {
                                const latlng = e.geocode.center;
                                const marker = L.marker(latlng).addTo(map);
                                document.querySelectorAll('input')[2].value = e.geocode.name;
                                document.getElementById("address").value = e.geocode.name;

                                // Xóa marker cũ nếu có
                                if (currentMarker) {
                                    map.removeLayer(currentMarker);
                                }

                                // Lưu trữ marker hiện tại
                                currentMarker = marker;

                                // Đặt lại view cho bản đồ
                                map.setView(latlng);
                            }).addTo(map);
                    </script>
                    <input type="text" name="address" id="address" hidden>
                    <div style="text-align: center; margin-top: 2%">
                        <button class="button-33" role="button" type="submit">
                            ADD BILL
                        </button>
                    </div>
                </div>
                <!--////////////////////////////////////////////////////////// -->
                <div class="right-column">
                    <% BillCheckList e = (BillCheckList) request.getAttribute("list");
                    %>
                    <div style="background-color:rgb(255, 255, 255);" style="display: flex; align-items: center;">
                        <table>
                            <tr>
                                <th style="width: 25%; text-align: left;" >Sản Phẩm</th>
                                <th style="width: 25%;">Đơn Giá</th>
                                <th style="width: 25%;">Số Lượng</th>
                                <th style="width: 25%;">Số Tiền</th>
                            </tr>
                            <%      ArrayList list = e.getList();
                                BillChecked aniCart;
                                for (int i = 0; i < list.size(); i++) {
                                    aniCart = (BillChecked) list.get(i);
                            %>

                            <tr>
                            <input hidden class="idU" name="BillUserId" value="<%=aniCart.getUserId()%>">

                            <input hidden class="idA" name="BillAniId" value="<%=aniCart.getAniId()%>">
                            <td>
                                <table name="sanpham">
                                    <tr>
                                        <td>
                                            <a title="<%=aniCart.getTitleAni()%>">
                                                <div style=" width: 100px;
                                                     height: 100px;
                                                     background-size: 100px 100px;
                                                     background-image: url(<%=aniCart.getImgUrl()%>);
                                                     display: block;">
                                                </div>
                                            </a>
                                        </td>
                                        <td>
                                            <div class="next"style="display: inline " >
                                                <a title=<%=aniCart.getTitleAni()%> style="text-decoration: none;">${aniCart.titleAni}
                                                </a>
                                            </div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <span class="numberR"><%=aniCart.getRootMoney()%></span><br>
                                <span class="numberR2"><%=aniCart.getRootMoney2()%></span><br>
                                <span class="numberR3"><%=aniCart.getRootMoney3()%></span><br>
                                <span class="numberR4"><%=aniCart.getRootMoney4()%></span>

                            </td>
                            <td>
                                <div class="button" id="buy">
                                    <input readonly size="1" type="text" style="display: inline" class="number " id="number" value="<%=aniCart.getAniNumber()%>" onkeypress="handleKeyPress(event, 'number',${aniCart.stt})"/>
                                </div>
                                <div class="button" id="buy2">
                                    <input  readonly size="1" type="text" style="display: inline" class="number2" id="number2" value="<%=aniCart.getAniNumber2()%>" onkeypress="handleKeyPress(event, 'number2',${aniCart.stt})"/>
                                </div>
                                <div class="button" id="buy3">
                                    <input  readonly size="1" type="text" style="display: inline" class="number3" id="number3" value="<%=aniCart.getAniNumber3()%>" onkeypress="handleKeyPress(event, 'number3',${aniCart.stt})"/>
                                </div>
                                <div class="button" id="buy4">
                                    <input  readonly size="1" type="text" style="display: inline" class="number4" id="number4" value="<%=aniCart.getAniNumber4()%>" onkeypress="handleKeyPress(event, 'number4',${aniCart.stt})"/>
                                </div>        
                            </td>
                            <td>
                                <span style="display: none">
                                </span>
                                <span class="money">
                                    <%=aniCart.getSumMoney()%>
                                </span>
                            </td>
                            <%
                                }%>
                        </table>
                    </div>
                </div>
            </div>
            <input type="hidden" id="data" name="data">
            <style>
                .container {
                    display: grid;
                    grid-template-columns: 4fr 8fr; /* 4/8 */
                    height: 100vh; /* chiều cao của màn hình */
                }

                .left-column {
                    background-color: #ccc;
                }

                .right-column {
                    background-color: #eee;
                }
            </style>
            <%
                request.setAttribute("billCheckList", e);
            %>
        </form>
    </body>
</html>