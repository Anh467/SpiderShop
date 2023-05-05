
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
        <!-- BIGCSS -->
        <style>
            .product-grid3 {
                font-family: Roboto, sans-serif;
                text-align: center;
                position: relative;
                z-index: 1;
            }
            .product-grid3:before {
                content: "";
                height: 81%;
                width: 100%;
                background: #fff;
                border: 1px solid rgba(0, 0, 0, 0.1);
                opacity: 0;
                position: absolute;
                top: 0;
                left: 0;
                z-index: -1;
                transition: all 0.5s ease 0s;
            }
            .product-grid3:hover:before {
                opacity: 1;
                height: 100%;
            }
            .product-grid3 .product-image3 {
                position: relative;
            }
            .product-grid3 .product-image3 a {
                display: block;
            }
            .product-grid3 .product-image3 img {
                width: 100%;
                height: auto;
            }
            .product-grid3 .pic-1 {
                opacity: 1;
                transition: all 0.5s ease-out 0s;
            }
            .product-grid3:hover .pic-1 {
                opacity: 0;
            }
            .product-grid3 .pic-2 {
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0;
                transition: all 0.5s ease-out 0s;
            }
            .product-grid3:hover .pic-2 {
                opacity: 1;
            }
            .product-grid3 .social {
                width: 120px;
                padding: 0;
                margin: 0 auto;
                list-style: none;
                opacity: 0;
                position: absolute;
                right: 0;
                left: 0;
                bottom: -23px;
                transform: scale(0);
                transition: all 0.3s ease 0s;
            }
            .product-grid3:hover .social {
                opacity: 1;
                transform: scale(1);
            }
            .product-grid3:hover .product-discount-label,
            .product-grid3:hover .product-new-label,
            .product-grid3:hover .title {
                opacity: 0;
            }
            .product-grid3 .social li {
                display: inline-block;
            }
            .product-grid3 .social li a {
                color: #e67e22;
                background: #fff;
                font-size: 18px;
                line-height: 50px;
                width: 50px;
                height: 50px;
                border: 1px solid rgba(0, 0, 0, 0.1);
                border-radius: 50%;
                margin: 0 2px;
                display: block;
                transition: all 0.3s ease 0s;
            }
            .product-grid3 .social li a:hover {
                background: #e67e22;
                color: #fff;
            }
            .product-grid3 .product-discount-label,
            .product-grid3 .product-new-label {
                background-color: #e67e22;
                color: #fff;
                font-size: 17px;
                padding: 2px 10px;
                position: absolute;
                right: 10px;
                top: 10px;
                transition: all 0.3s;
            }
            .product-grid3 .product-content {
                z-index: -1;
                padding: 15px;
                text-align: left;
            }
            .product-grid3 .title {
                font-size: 14px;
                text-transform: capitalize;
                margin: 0 0 7px;
                transition: all 0.3s ease 0s;
            }
            .product-grid3 .title a {
                color: #414141;
            }
            .product-grid3 .price {
                color: #000;
                font-size: 16px;
                letter-spacing: 1px;
                font-weight: 600;
                margin-right: 2px;
                display: inline-block;
            }
            .product-grid3 .price span {
                color: #909090;
                font-size: 14px;
                font-weight: 500;
                letter-spacing: 0;
                text-decoration: line-through;
                text-align: left;
                display: inline-block;
                margin-top: -2px;
            }
            .product-grid3 .rating {
                padding: 0;
                margin: -22px 0 0;
                list-style: none;
                text-align: right;
                display: block;
            }
            .product-grid3 .rating li {
                color: #ffd200;
                font-size: 13px;
                display: inline-block;
            }
            .product-grid3 .rating li.disable {
                color: #dcdcdc;
            }
            @media only screen and (max-width: 1200px) {
                .product-grid3 .rating {
                    margin: 0;
                }
            }
            @media only screen and (max-width: 990px) {
                .product-grid3 {
                    margin-bottom: 30px;
                }
                .product-grid3 .rating {
                    margin: -22px 0 0;
                }
            }
            @media only screen and (max-width: 359px) {
                .product-grid3 .rating {
                    margin: 0;
                }
            }
            .image1 {
                height: 360px;
                font-weight: 60px;
            }
            .hover-box {
                position: relative;
                overflow: hidden;
            }
            .hover-box *,
            .hover-box:before,
            .hover-box:after {
                -webkit-box-sizing: border-box;
                box-sizing: border-box;
                -webkit-transition: all 0.4s ease;
                transition: all 0.4s ease;
            }
            .hover-box:before,
            .hover-box:after {
                position: absolute;
                top: 20px;
                right: 20px;
                content: "";
                background-color: #fff;
                z-index: 1;
                opacity: 0;
            }
            .hover-box:before {
                width: 0;
                height: 1px;
            }
            .hover-box:after {
                height: 0;
                width: 1px;
            }
            .hover-box figcaption {
                position: absolute;
                left: 0;
                bottom: 0;
                padding: 15px 20px;
            }
            .hover-box h3,
            .hover-box h4 {
                margin: 0;
                font-size: 1.1em;
                font-weight: normal;
                opacity: 0;
            }
            .hover-box h4 {
                font-size: 0.8em;
                text-transform: uppercase;
            }
            .hover-box a {
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: 0;
                z-index: 1;
            }
            .hover-box:hover img,
            .hover-box.hover img {
                zoom: 1;
                filter: alpha(opacity=20);
                -webkit-opacity: 0.2;
                opacity: 0.2;
            }
            .hover-box:hover:before,
            .hover-box.hover:before,
            .hover-box:hover:after,
            .hover-box.hover:after {
                opacity: 1;
                -webkit-transition-delay: 0.25s;
                transition-delay: 0.25s;
            }
            .hover-box:hover:before,
            .hover-box.hover:before {
                width: 40px;
            }
            .hover-box:hover:after,
            .hover-box.hover:after {
                height: 40px;
            }
            .hover-box:hover h3,
            .hover-box.hover h3,
            .hover-box:hover h4,
            .hover-box.hover h4 {
                opacity: 1;
            }
            .hover-box:hover h3,
            .hover-box.hover h3 {
                -webkit-transition-delay: 0.3s;
                transition-delay: 0.3s;
            }
            .hover-box:hover h4,
            .hover-box.hover h4 {
                -webkit-transition-delay: 0.35s;
                transition-delay: 0.35s;
            }
            body{
                position: absolute;
            }
            hovvv :hover{
                color: white;
                text-decoration: underline;
            }
            /* header */
            .searchbar {
                margin-bottom: auto;
                margin-top: auto;
                height: 50px;
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
                line-height: 30px;
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
                height: 30px;
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
            .mg-top{
                padding-top: 60px;
            }

        </style>
        <!-- BIGCSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        
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
        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>        
        <!--        <div style="text-align: center;">
                        <span style="font-size: 30px; font-weight: bold; color: burlywood;">IRCN V</span>
                         <i class="fa fa-address-book"></i>
                        <i class="fa fa-search"></i>
                        <i class="fa fa-cart-plus"></i> 
                    </div>-->
        <!--        <div style="background: #5a5a5a">
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
                                            <form action="SendToAnimal">
                                                <input class="submit-item" type="submit" value="Spider" />
                                                 <i  class="fa fa-phone"></i> 
                                            </form>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="#">
                                            <form action="SendToAnimal">
                                                <input class="submit-item" type="submit" value="Frog" />
                                                 <i  class="fa fa-phone"></i> 
                                            </form>
                                        </a>
                                    </li>
                                    <li><a class="dropdown-item" href="#a">Insect</a></li>
                                    <li><a class="dropdown-item" href="#">Snake</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link container-fluid" href="#">
                                    <form action="IntroDuction">
                                        <input class="submit-item" type="submit" value="Thông tin" />
                                         <i  class="fa fa-phone"></i> 
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
                </div>-->
<!--        <div id="demo" class="carousel slide opa" data-bs-ride="carousel">
             Indicators/dots 
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

             The slideshow/carousel 
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

             Left and right controls/icons 
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
                <span class="sr-only">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
                <span class="sr-only">Previous</span>
            </button>
        </div>-->


        <div class="slide" >
            <div id="demo" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
                </div>

                <!-- The slideshow/carousel -->
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="image/shop.png" alt="Spider" class="d-block" style="width: 100%" />
                        <div class="carousel-caption">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="image/1.png" alt="Chicago" class="d-block" style="width: 100%" />
                        <div class="carousel-caption">
                            <h3></h3>
                            <p></p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="image/2.png" alt="New York" class="d-block" style="width: 100%" />
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
        </div>
        <div class="3tyle">
            <h1 class="text-center" style="margin-top:30px">What can you see ?</h1>

            <div class="container">
                <div class="row mt-5">
                    <div class="col-md-12 col-12 rounded">
                        <div class="row">
                            <div class="col-md-4 col-12">
                                <figure class="hover-box bg-dark text-white">
                                    <img
                                        src="https://th.bing.com/th/id/R.2f22955ada955779e2435d9ce0ad0199?rik=YrNsF1d4TXRbLQ&pid=ImgRaw&r=0"
                                        alt="hover-box-first"
                                        class="w-100 img-thumbnail image1"
                                        />
                                    <figcaption class="text-right">
                                        <h3 class="bg-info p-1 mb-1" style="font-size: 30px">Spider</h3>
                                        <h4></h4>
                                    </figcaption>
                                    <a href="#"></a>
                                </figure>
                            </div>
                            <div class="col-md-4 col-12">
                                <figure class="hover-box bg-dark text-white">
                                    <img
                                        src="https://th.bing.com/th/id/OIP.IYd20yvzoUf1eELfngLKVgAAAA?pid=ImgDet&rs=1"
                                        alt="hover-box-second"
                                        class="w-100 img-thumbnail image1"
                                        />
                                    <figcaption class="text-right">
                                        <h3 class="bg-info p-1 mb-1" style="font-size: 30px">Frog</h3>
                                    </figcaption>
                                    <a href="#"></a>
                                </figure>
                            </div>
                            <div class="col-md-4 col-12">
                                <figure class="hover-box bg-dark text-white">
                                    <img
                                        src="https://th.bing.com/th/id/OIP.rIkKYcpNHTHPdsIvZtZyxAHaE8?pid=ImgDet&w=800&h=534&rs=1"
                                        alt="hover-box-third"
                                        class="w-100 img-thumbnail image1"
                                        />
                                    <figcaption class="text-right">
                                        <h3 class="bg-info p-1 mb-1" style="font-size: 30px">Scorpion</h3>
                                    </figcaption>
                                    <a href="#"></a>
                                </figure>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
<!--        <h1 class="text-center" style="margin-top:30px; margin-bottom: 30px;">Trending pets</h1>
        <div class="trending">
            <section class="pd-top-30">
                <div class="container">
                    <div class="d-flex row-10">
                        <div
                            class="item-block col-xs-12 col-md-6 col-sm-12"
                            style="box-shadow: 0px 5px 5px lightblue; padding-bottom: 20px"
                            >
                            <div class="top-head d-flex" style="margin-bottom: 10px">
                                <h2>Spider</h2>
                                <a href="#" style="text-decoration: none; margin-left: 300px"> Watch all » </a>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <img
                                        src="https://spideridentifications.com/wp-content/uploads/2019/03/Purple-Pink-Toe-Tarantula.jpg"
                                        alt="main1"
                                        style="width: 180px; height: 300px; border-radius: 5px"
                                        />
                                </div>
                                <div class="col-md-4">
                                    <div class="product-grid3">
                                        <div class="product-image3">
                                            <a href="#">
                                                <img
                                                    class="pic-1"
                                                    style="width: 155px; height: 206px"
                                                    src="https://www.backwaterreptiles.com/images/tarantulas/purple-pink-toe-tarantula-for-sale.jpg"
                                                    />
                                                <img
                                                    class="pic-2"
                                                    src="https://i.pinimg.com/474x/e4/90/e3/e490e3c5b852ce251e10dd6e212066c8.jpg"
                                                    />
                                            </a>
                                            <ul class="social">
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-bag"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                            <span class="product-new-label">New</span>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="#">123 ani1</a></h3>
                                            <div class="price">
                                                $63.50
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4" style="padding-left: 0">
                                    <div class="product-grid3">
                                        <div class="product-image3">
                                            <a href="#">
                                                <img
                                                    class="pic-1"
                                                    src="https://i.pinimg.com/474x/6c/4e/5f/6c4e5f87d396142977479ddabbd205b6.jpg"
                                                    style="width: 155px; height: 206px"
                                                    alt="anh 1"
                                                    />
                                                <img
                                                    class="pic-2"
                                                    src="https://i.pinimg.com/474x/e4/90/e3/e490e3c5b852ce251e10dd6e212066c8.jpg"
                                                    style="width: 155px; height: 206px"
                                                    />
                                            </a>
                                            <ul class="social">
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-bag"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                            <span class="product-new-label">New</span>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="#">123 ani1</a></h3>
                                            <div class="price">
                                                $63.50
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div
                            class="item-block col-xs-12 col-md-6 col-sm-12"
                            style=" margin-left:5px;box-shadow: 10px 10px 5px lightblue"
                            ;border-padding:5px
                            >
                            <div class="top-head d-flex" style="margin-bottom: 10px">
                                <h2>Scorpion</h2>
                                <a href="#" style="text-decoration: none; margin-left: 290px"> Watch all » </a>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <img
                                        src="https://i.pinimg.com/474x/6c/4e/5f/6c4e5f87d396142977479ddabbd205b6.jpg"
                                        alt="main1"
                                        style="width: 180px; height: 300px; border-radius: 5px"
                                        />
                                </div>
                                <div class="col-md-4">
                                    <div class="product-grid3">
                                        <div class="product-image3">
                                            <a href="#">
                                                <img
                                                    class="pic-1"
                                                    src="https://i.pinimg.com/474x/6c/4e/5f/6c4e5f87d396142977479ddabbd205b6.jpg"
                                                    style="width: 155px; height: 206px"
                                                    />
                                                <img
                                                    class="pic-2"
                                                    src="https://i.pinimg.com/474x/e4/90/e3/e490e3c5b852ce251e10dd6e212066c8.jpg"
                                                    style="width: 155px; height: 206px"
                                                    />
                                            </a>
                                            <ul class="social">
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-bag"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                            <span class="product-new-label">New</span>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="#">123 ani1</a></h3>
                                            <div class="price">
                                                $63.50
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4" style="padding-left: 0">
                                    <div class="product-grid3">
                                        <div class="product-image3">
                                            <a href="#">
                                                <img
                                                    class="pic-1"
                                                    src="https://i.pinimg.com/474x/6c/4e/5f/6c4e5f87d396142977479ddabbd205b6.jpg"
                                                    style="width: 155px; height: 206px"
                                                    alt="anh 1"
                                                    />
                                                <img
                                                    class="pic-2"
                                                    src="https://i.pinimg.com/474x/e4/90/e3/e490e3c5b852ce251e10dd6e212066c8.jpg"
                                                    style="width: 155px; height: 206px"
                                                    />
                                            </a>
                                            <ul class="social">
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-bag"></i></a>
                                                </li>
                                                <li>
                                                    <a href="#"><i class="fa fa-shopping-cart"></i></a>
                                                </li>
                                            </ul>
                                            <span class="product-new-label">New</span>
                                        </div>
                                        <div class="product-content">
                                            <h3 class="title"><a href="#">123 ani1</a></h3>
                                            <div class="price">
                                                $63.50
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>-->

        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>



    </body>
</html>