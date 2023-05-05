
<!DOCTYPE html>

<html>
    <head>
        <title>IRCN V - Exotic pets shop</title>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
        <!-- Bootstrap -->
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .searchbar {
                margin-bottom: auto;
                margin-top: auto;
                height: 60px;
                background-color: #353b48;
                border-radius: 30px;
                padding: 10px;
            }

            .search_input {
                color: white;
                border: 0;
                outline: 0;
                background: none;
                width: 0;
                caret-color: transparent;
                line-height: 40px;
                transition: width 0.4s linear;
            }

            .searchbar:hover > .search_input {
                padding: 0 10px;
                width: 250px;
                caret-color: red;
                transition: width 0.4s linear;
            }

            .searchbar:hover > .search_icon {
                background: white;
                color: #e74c3c;
            }

            .search_icon {
                height: 40px;
                width: 40px;
                float: right;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                color: white;
                text-decoration: none;
            }
            ul {
                display: flex;
                text-align: center;
                list-style: none;
            }
            .opa {
                width: 100%;
                height: 30%;
                background: rgba(0, 0, 0, 0.6);
            }
            ul li {
            }
            .bg-light {
                background-color: #212529 !important;
            }
            .nav {
                text-align: center;
            }
            .nav-link {
                color: white;
                /* border: solid 5px; */
            }
            .dropdown:hover .dropdown-content {
                display: block;
                position: fixed;
                z-index: 50;
                background: rgb(33, 37, 41);
            }
            .dropdown:not(:hover) .dropdown-content {
                display: none;
            }
            .dropdown-item {
                color: white;
            }
            .navbar-nav .nav-item :hover .nav-link {
                color: yellow;
            }
            .navbar-nav .nav-item :not(:hover) .nav-link {
                color: white;
            }
            .dropdown-item .submit-item {
                background: transparent;
                border: none;
                color: white;
            }
            .nav-item .submit-item {
                background: transparent;
                border: none;
                color: white;
            }
            /*  .carousel {
                     width: 640px;
                    height: 360px;
                  }*/
            .carousel-inner > .item > img {
                object-fit: cover;
            }
            /*.carousel-inner > .item > img, .carousel-inner > .item > a > img {
                      width: 100%;
                  }*/
            .carousel-control :hover .carousel-control {
                color: black;
            }
        </style>
        <link
            rel="stylesheet"
            href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
            integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
            crossorigin="anonymous"
            />
    </head>
    <body >
        <!--        <div>TODO write</div>
                    <form action="View" method="post">
                        <input type="submit" value="Submitt" />
                         <i  class="fa fa-phone"></i> 
                    </form>-->
        <!--    <div class="row">
              <div class="col-md-9">
                <marquee behavior="scroll" direction="left">Gi?m giá 10% khi g?i feedback v? s?n ph?m</marquee>
              </div>
              <div style="display: inline" class="col-md-3">
                <i style="font-size: 24px" class="fa fa-phone"></i>
                <span>03848xxxxx</span>
              </div>
            </div>-->
        <%@include file="ContentSubJSP/header.jsp" %>
        <!--        <div style="text-align: center;">
                        <span style="font-size: 30px; font-weight: bold; color: burlywood;">IRCN V</span>
                         <i class="fa fa-address-book"></i>
                        <i class="fa fa-search"></i>
                        <i class="fa fa-cart-plus"></i> 
                    </div>-->
        <div style="background: #5a5a5a">
            <nav class="navbar navbar-expand-sm bg-light justify-content-center">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="navbar-brand" href="index.html" style="font-size: 30px; font-weight: bold; color: burlywood"
                           >IRCN V Shop</a
                        >
                    </li>
                    <li class="nav-item">
                        <a class="nav-link container-fluid" href="#">Trang Ch?</a>
                    </li>
                    <li class="nav-item dropdown" style="text-align: center">
                        <span class="nav-link container-fluid"> Loài ??ng V?t </span>
                        <ul class="dropdown-content dropdown-toggle-split">
                            <li>
                                <a class="dropdown-item" href="Animal.jsp?type=Spider">
                                    Spider
<!--                                    <form action="SendToAnimal">
                                        <input class="submit-item" type="submit" value="Spider" />
                                         <i  class="fa fa-phone"></i> 
                                    </form>-->
                                </a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">
                                    <form action="SendToAnimal">
                                        <input class="submit-item" type="submit" value="Frog" />
                                        <!-- <i  class="fa fa-phone"></i> -->
                                    </form>
                                </a>
                            </li>

                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link container-fluid" href="#">
                            <form action="IntroDuction">
                                <input class="submit-item" type="submit" value="Thông tin" />
                                <!-- <i  class="fa fa-phone"></i> -->
                            </form>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link container-fluid" href="#">Gi?i Thi?u</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link container-fluid" href="#">Tin t?c</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link container-fluid" href="#">Cách ch?m sóc</a>
                    </li>
                    search
                    <li class="nav-item">
                        <form class="d-flex">
                            <div class="d-flex justify-content-center h-100">
                                <div class="searchbar">
                                    <input class="search_input" type="text" name="" placeholder="Search..." />
                                    <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                                </div>
                            </div>
                        </form>
                    </li>
                </ul>
            </nav>
        </div>
        <div id="demo" class="carousel slide opa" data-bs-ride="carousel">
            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img
                        src="https://cdn-prod.medicalnewstoday.com/content/images/articles/290/290338/tarantula.jpg"
                        alt="Spider"
                        class="d-block"
                        style="width: 100%"
                        />
                    <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img
                        src="https://images.ctfassets.net/cnu0m8re1exe/2wxnVZrE8n4CfBfg8y6MQG/3aadbc65e01c09bc55de941182118986/shutterstock_426831952.jpg"
                        alt="Chicago"
                        class="d-block"
                        style="width: 100%"
                        />
                    <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img
                        src="https://www.thesprucepets.com/thmb/REXiqwvQ5p7T2NhO1A3x0MU8YME=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/AC3272-001-56a2bceb5f9b58b7d0cdf84b.jpg"
                        alt="New York"
                        class="d-block"
                        style="width: 100%"
                        />
                    <div class="carousel-caption">
                        <h3></h3>
                        <p></p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="sr-only">Previous</span>
            </button>
        </div>
        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>

    </body>
</html>