<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- Coding by CodingLab | www.codinglabweb.com -->
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <!----======== CSS ======== -->
        <style>
            /* Google Font Import - Poppins */
            @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap");
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: "Poppins", sans-serif;
            }

            :root {
                /* ===== Colors ===== */
                --body-color: #e4e9f7;
                --sidebar-color: #fff;
                --primary-color: #695cfe;
                --primary-color-light: #f6f5ff;
                --toggle-color: #ddd;
                --text-color: #707070;

                /* ====== Transition ====== */
                --tran-03: all 0.2s ease;
                --tran-03: all 0.3s ease;
                --tran-04: all 0.3s ease;
                --tran-05: all 0.3s ease;
            }

            body {
                min-height: 100vh;
                background-color: var(--body-color);
                transition: var(--tran-05);
            }

            ::selection {
                background-color: var(--primary-color);
                color: #fff;
            }

            body.dark {
                --body-color: #18191a;
                --sidebar-color: #242526;
                --primary-color: #3a3b3c;
                --primary-color-light: #3a3b3c;
                --toggle-color: #fff;
                --text-color: #ccc;
            }

            /* ===== Sidebar ===== */
            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                height: 100%;
                width: 250px;
                padding: 10px 14px;
                background: var(--sidebar-color);
                transition: var(--tran-05);
                z-index: 100;
            }
            .sidebar.close {
                width: 88px;
            }

            /* ===== Reusable code - Here ===== */
            .sidebar li {
                height: 50px;
                list-style: none;
                display: flex;
                align-items: center;
                margin-top: 10px;
            }

            .sidebar header .image,
            .sidebar .icon {
                min-width: 60px;
                border-radius: 6px;
            }

            .sidebar .icon {
                min-width: 60px;
                border-radius: 6px;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 20px;
            }

            .sidebar .text,
            .sidebar .icon {
                color: var(--text-color);
                transition: var(--tran-03);
            }

            .sidebar .text {
                font-size: 17px;
                font-weight: 500;
                white-space: nowrap;
                opacity: 1;
            }
            .sidebar.close .text {
                opacity: 0;
            }
            /* =========================== */

            .sidebar header {
                position: relative;
            }

            .sidebar header .image-text {
                display: flex;
                align-items: center;
            }
            .sidebar header .logo-text {
                display: flex;
                flex-direction: column;
            }
            header .image-text .name {
                margin-top: 2px;
                font-size: 18px;
                font-weight: 600;
            }

            header .image-text .profession {
                font-size: 16px;
                margin-top: -2px;
                display: block;
            }

            .sidebar header .image {
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .sidebar header .image img {
                width: 40px;
                border-radius: 6px;
            }

            .sidebar header .toggle {
                position: absolute;
                top: 50%;
                right: -25px;
                transform: translateY(-50%) rotate(180deg);
                height: 25px;
                width: 25px;
                background-color: var(--primary-color);
                color: var(--sidebar-color);
                border-radius: 50%;
                display: flex;
                align-items: center;
                justify-content: center;
                font-size: 22px;
                cursor: pointer;
                transition: var(--tran-05);
            }

            body.dark .sidebar header .toggle {
                color: var(--text-color);
            }

            .sidebar.close .toggle {
                transform: translateY(-50%) rotate(0deg);
            }

            .sidebar .menu {
                margin-top: 40px;
            }

            .sidebar li.search-box {
                border-radius: 6px;
                background-color: var(--primary-color-light);
                cursor: pointer;
                transition: var(--tran-05);
            }

            .sidebar li.search-box input {
                height: 100%;
                width: 100%;
                outline: none;
                border: none;
                background-color: var(--primary-color-light);
                color: var(--text-color);
                border-radius: 6px;
                font-size: 17px;
                font-weight: 500;
                transition: var(--tran-05);
            }
            .sidebar li a {
                list-style: none;
                height: 100%;
                background-color: transparent;
                display: flex;
                align-items: center;
                height: 100%;
                width: 100%;
                border-radius: 6px;
                text-decoration: none;
                transition: var(--tran-03);
            }

            .sidebar li a:hover {
                background-color: var(--primary-color);
            }
            .sidebar li a:hover .icon,
            .sidebar li a:hover .text {
                color: var(--sidebar-color);
            }
            body.dark .sidebar li a:hover .icon,
            body.dark .sidebar li a:hover .text {
                color: var(--text-color);
            }

            .sidebar .menu-bar {
                height: calc(100% - 55px);
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                overflow-y: scroll;
            }
            .menu-bar::-webkit-scrollbar {
                display: none;
            }
            .sidebar .menu-bar .mode {
                border-radius: 6px;
                background-color: var(--primary-color-light);
                position: relative;
                transition: var(--tran-05);
            }

            .menu-bar .mode .sun-moon {
                height: 50px;
                width: 60px;
            }

            .mode .sun-moon i {
                position: absolute;
            }
            .mode .sun-moon i.sun {
                opacity: 0;
            }
            body.dark .mode .sun-moon i.sun {
                opacity: 1;
            }
            body.dark .mode .sun-moon i.moon {
                opacity: 0;
            }

            .menu-bar .bottom-content .toggle-switch {
                position: absolute;
                right: 0;
                height: 100%;
                min-width: 60px;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 6px;
                cursor: pointer;
            }
            .toggle-switch .switch {
                position: relative;
                height: 22px;
                width: 40px;
                border-radius: 25px;
                background-color: var(--toggle-color);
                transition: var(--tran-05);
            }

            .switch::before {
                content: "";
                position: absolute;
                height: 15px;
                width: 15px;
                border-radius: 50%;
                top: 50%;
                left: 5px;
                transform: translateY(-50%);
                background-color: var(--sidebar-color);
                transition: var(--tran-04);
            }

            body.dark .switch::before {
                left: 20px;
            }

            .home {
                position: absolute;
                top: 0;
                top: 0;
                left: 250px;
                height: 100vh;
                width: calc(100% - 250px);
                background-color: var(--body-color);
                transition: var(--tran-05);
            }
            .home .text {
                font-size: 30px;
                font-weight: 500;
                color: var(--text-color);
                padding: 12px 60px;
            }

            .sidebar.close ~ .home {
                left: 78px;
                height: 100vh;
                width: calc(100% - 78px);
            }
            body.dark .home .text {
                color: var(--text-color);
            }
        </style>
        <!----===== Boxicons CSS ===== -->
        <link href="https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css" rel="stylesheet" />
        <link href="../bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="../bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        
        <!--icon fontawesome-->
        <script src="https://kit.fontawesome.com/24c45437f2.js" crossorigin="anonymous"></script>
        <!--<title>Dashboard Sidebar Menu</title>-->
        <script>
            .resize - dive{
                resize: both;
                overflow: auto;
            }
            var xValues = ['abc', 200, 300, 400, 500, 600, 700, 800, 900, 1000];

            new Chart("myChart", {
                type: "line",
                data: {
                    labels: xValues,
                    datasets: [{
                            data: [860, 1140, 1060, 1060, 1070, 1110, 1330, 2210, 7830, 2478],
                            borderColor: "red",
                            fill: false
                        }]
                },
                options: {
                    legend: {display: false}
                }
            });
        </script>
    </head>
    <body>
        <nav class="sidebar close">
            <header>
                <div class="image-text">
                    <span class="image">
                        <img src="image/logorm.png" alt="" />
                    </span>

                    <div class="text logo-text">
                        <span class="name">IRCN V</span>
                        <span class="profession">Exotic pets shop</span>
                    </div>
                </div>

                <i class="bx bx-chevron-right toggle"></i>
            </header>

            <div class="menu-bar">
                <div class="menu">
                    <li class="search-box">
                        <i class="bx bx-search icon"></i>
                        <input type="text" placeholder="Search..." />
                    </li>

                    <ul class="menu-links">
                        <li class="nav-link">
                            <a href="AdminDashBoard.jsp">
                                <i class="bx bx-home-alt icon"></i>
                                <span class="text nav-text">Dashboard</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="Admin_product.jsp">
                                <i class="bx bx-bar-chart-alt-2 icon"></i>
                                <span class="text nav-text">Product</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="ListNews.jsp">
                                <i class="bx bx-bell icon"></i>
                                <span class="text nav-text">News</span>
                            </a>
                        </li>

                        <li class="nav-link">
                            <a href="BillList.jsp">
                                <i class="bx bx-wallet icon"></i>
                                <span class="text nav-text">Bill</span>
                            </a>
                        </li>
                    </ul>
                </div>

                <div class="bottom-content">
                    <li class="">
                        <a href="#">
                            <i class="bx bx-log-out icon"></i>
                            <span class="text nav-text">Logout</span>
                        </a>
                    </li>

                    <li class="mode">
                        <div class="sun-moon">
                            <i class="bx bx-moon icon moon"></i>
                            <i class="bx bx-sun icon sun"></i>
                        </div>
                        <span class="mode-text text">Dark mode</span>

                        <div class="toggle-switch">
                            <span class="switch"></span>
                        </div>
                    </li>
                </div>
            </div>
        </nav>
        
        <jsp:useBean id="std" class="model.GetInfor" scope="request"/>
        <c:set var="dash" value="${std.dashBoard}"/>
        <c:set var="list_year_month_income" value="${dash.getList_income()}"/>
        <section class="home">
            <div class="row">
                <div class="col-md-3 resize-dive">
                    <jsp:include page="DashBoardBlock.jsp">
                        <jsp:param name="icon" value="fa-solid fa-circle-dollar-to-slot"/>
                        <jsp:param name="content" value="Revenue all time you work"/>
                        <jsp:param name="num" value="${dash.getTotalIncome()}"/>
                    </jsp:include>
                </div>
                <div class="col-md-3 resize-dive">
                    <jsp:include page="DashBoardBlock.jsp">
                        <jsp:param name="icon" value="fa-solid fa-cart-shopping"/>
                        <jsp:param name="content" value="Number order"/>
                        <jsp:param name="num" value="${dash.getCount_order()}"/>
                    </jsp:include>
                </div>
                <div class="col-md-3 resize-dive">
                    <jsp:include page="DashBoardBlock.jsp">
                        <jsp:param name="icon" value="fa-solid fa-money-bills"/>
                        <jsp:param name="content" value="Income per month"/>
                        <jsp:param name="num" value="${dash.getTotalIncomePermonth()}"/>
                    </jsp:include>
                </div>
                <div class="col-md-3 resize-dive">
                    <jsp:include page="DashBoardBlock.jsp">
                        <jsp:param name="icon" value="fa-solid fa-user"/>
                        <jsp:param name="content" value="number of user"/>
                        <jsp:param name="num" value="${dash.getNumber_user()}"/>
                    </jsp:include>
                </div>
                <div>
                    <jsp:include page="AdminLineChart.jsp"/>
                </div>
            </div>

            
            


        </section>

        <script>
            const body = document.querySelector("body"),
                    sidebar = body.querySelector("nav"),
                    toggle = body.querySelector(".toggle"),
                    searchBtn = body.querySelector(".search-box"),
                    modeSwitch = body.querySelector(".toggle-switch"),
                    modeText = body.querySelector(".mode-text");

            toggle.addEventListener("click", () => {
                sidebar.classList.toggle("close");
            });

            searchBtn.addEventListener("click", () => {
                sidebar.classList.remove("close");
            });

            modeSwitch.addEventListener("click", () => {
                body.classList.toggle("dark");

                if (body.classList.contains("dark")) {
                    modeText.innerText = "Light mode";
                } else {
                    modeText.innerText = "Dark mode";
                }
            });
        </script>
    </body>
</html>
