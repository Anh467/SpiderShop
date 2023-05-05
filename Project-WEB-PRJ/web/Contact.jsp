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
      .contact-us{
        margin-left: 5%;
      }
    
      
    </style>
    <!-- BIGCSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  </head>
  <body    >
    <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>
    <div class="mgtop" style="margin-top: 200px;">
      </div>


<section class="mb-4 ppp" >

    <div class='console-container text-center' style=" font-family:Khula;
    font-size:4em;
    text-align:center;
    height:100px;
    width:800px;
    margin-left:10%;

   "><span id='text'></span><div class='console-underscore' style="display:inline-block;
  position:relative;
  top:-0.14em;
  left:10px;" id='console'>&#95;</div></div>
   

<script>
    consoleText(['Contact Us <3.', 'Happy to serve U.','Rat vui khi phuc vu ban'], 'text',['tomato','rebeccapurple','lightblue']);
 function consoleText(words, id, colors) {
     if (colors === undefined) colors = ['#fff'];
     var visible = true;
     var con = document.getElementById('console');
     var letterCount = 1;
     var x = 1;
     var waiting = false;
     var target = document.getElementById(id)
     target.setAttribute('style', 'color:' + colors[0])
     window.setInterval(function() {
   
       if (letterCount === 0 && waiting === false) {
         waiting = true;
         target.innerHTML = words[0].substring(0, letterCount)
         window.setTimeout(function() {
           var usedColor = colors.shift();
           colors.push(usedColor);
           var usedWord = words.shift();
           words.push(usedWord);
           x = 1;
           target.setAttribute('style', 'color:' + colors[0])
           letterCount += x;
           waiting = false;
         }, 1000)
       } else if (letterCount === words[0].length + 1 && waiting === false) {
         waiting = true;
         window.setTimeout(function() {
           x = -1;
           letterCount += x;
           waiting = false;
         }, 1000)
       } else if (waiting === false) {
         target.innerHTML = words[0].substring(0, letterCount)
         letterCount += x;
       }
     }, 120)
     window.setInterval(function() {
       if (visible === true) {
         con.className = 'console-underscore hidden'
         visible = false;
   
       } else {
         con.className = 'console-underscore'
   
         visible = true;
       }
     }, 400)
   }

</script>
  

    <!--Section heading-->
    <!-- <h2 class="h1-responsive font-weight-bold text-center my-4" style="font-size: 50px; margin-left: 5%;">Contact us <img src="https://www.bing.com/th/id/OGC.33fd094fd495745cf38c4fe89a92a1e8?pid=1.7&rurl=https%3a%2f%2fmedia.giphy.com%2fmedia%2fAFDLK5jU756dW%2fgiphy.gif&ehk=gcIPvHdmMXO5NleIa9aCrg4q8NTNUHEVovjzNzI5xWo%3d" alt="" style="width: 30px;height: 30pxs;"></h2> -->
    <!--Section description-->
    <p class="text-center w-responsive mx-auto mb-5">Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to  within
        a matter of hours to help you.</p>
<div class="ct contact">


    <div class="row" style="margin-left: 20%;">

        <!--Grid column-->
        <div class="col-md-9 mb-md-0 mb-5">
            <form id="contact-form" name="contact-form" action="mail.php" method="POST">

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <label for="name" class="">Your name</label>

                            <input type="text" id="name" name="name" class="form-control">
                        </div>
                    </div>
                    <!--Grid column-->

                    <!--Grid column-->
                    <div class="col-md-6">
                        <div class="md-form mb-0">
                            <label for="email" class="">Your email</label>

                            <input type="text" id="email" name="email" class="form-control">
                        </div>
                    </div>
                    <!--Grid column-->

                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">
                    <div class="col-md-12">
                        <div class="md-form mb-0">
                            <label for="subject" class="">Subject</label>

                            <input type="text" id="subject" name="subject" class="form-control">
                        </div>
                    </div>
                </div>
                <!--Grid row-->

                <!--Grid row-->
                <div class="row">

                    <!--Grid column-->
                    <div class="col-md-12">

                        <div class="md-form">
                            <label for="message">Your message</label>

                            <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                        </div>

                    </div>
                </div>
                <!--Grid row-->

            </form>

            <div class="text-center text-md-left" style="margin-top:30px">
                <a class="btn btn-primary" onclick="document.getElementById('contact-form').submit();" style="padding-left:20px;padding-right: 20px;">Send</a>
            </div>
            <div class="status"></div>
        </div>
        <!--Grid column-->



    </div>

</section>

<div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div>
    
  </body>
</html>
