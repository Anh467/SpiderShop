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
        <link href="../bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet" />
        <script src="../bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <!-- BIGCSS -->
        <style>
            .ho:hover {
                color: aqua;
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
        </style>
        <!-- BIGCSS -->
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
            integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
    </head>
    <body>
        <footer class="footer bg-white" style="margin-top: 50px;">

            <div class="mid-footer">
                <div class="container">
                    <div class="row">
                        <div class="col-xs-12 col-md-6 col-lg-3 footer-click">
                            <iframe
                                src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d630.8556871040286!2d108.26099002634841!3d15.968867651905276!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1svi!2s!4v1676466633527!5m2!1svi!2s"
                                width="250"
                                height="200"
                                style="border: 0"
                                allowfullscreen=""
                                loading="lazy"
                                referrerpolicy="no-referrer-when-downgrade"
                                ></iframe>
                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-3 footer-click">
                            <h4 class="title-menu clicked">
                                Contact Information <i class="fa fa-angle-down d-md-none d-inline-block"></i>
                            </h4>
                            <b>Address: </b>Da Nang <br />
                            <b>Phone: </b> 09830668xxx<br />
                            <b>Email: </b> admin@ircnvstore.vn
                            <br />
                            <br />
                        </div> 


                        <div class="col-xs-12 col-md-6 col-lg-2 footer-click">
                            <h4 class="title-menu clicked">Policy <i class="fa fa-angle-down d-md-none d-inline-block"></i></h4>
                            <a href="" style="text-decoration: none; color: black;" class="ho">Return Policy</a></br>
                            <a href="" style="text-decoration: none; color: black;"class="ho">Terms Of Use</a></br>
                            <a href="" style="text-decoration: none; color: black;"class="ho">Security</a></br>
                            <a href="" style="text-decoration: none; color: black;"class="ho">Privacy</a>


                        </div>
                        <div class="col-xs-12 col-md-6 col-lg-4 footer-click">
                            <div class="social-footer">

                                <iframe                src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FIRCNVShop&tabs=%20messages&width=340&height=200&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId"
                                                       width="340"
                                                       height="200"
                                                       style="border: none; overflow: hidden"
                                                       scrolling="no"
                                                       frameborder="0"
                                                       allowfullscreen="true"
                                                       allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"
                                                       ></iframe>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="bg-footer-bottom copyright clearfix py-2">
                <div class="container">
                    <div class="row">
                        <div id="copyright" class="col-lg-12 col-md-12 col-xs-12 fot_copyright text-center " >
                            <span class="wsp"> © The Coppyright by IRCNVSHOP </span>
                        </div>
                    </div>

                    <a href="index.html" id="back-to-top" class="backtop back-to-top show end" title="Ontoppage"
                       ><i class="fa fa-angle-up" aria-hidden="true"></i
                        ></a>
                </div>
            </div>
        </footer>
        <script>
            const typebotInitScript = document.createElement("script");
            typebotInitScript.type = "module";
            typebotInitScript.innerHTML = `import Typebot from 'https://cdn.jsdelivr.net/npm/@typebot.io/js@0.0/dist/web.js'

  Typebot.initBubble({
    typebot: "faq-copy-icds5kh",
    theme: {
      button: { backgroundColor: "#0042DA", iconColor: "#FFFFFF" },
      previewMessage: { backgroundColor: "#ffffff", textColor: "black" },
    },
  });
  `;
            document.body.append(typebotInitScript);

        </script>
    </body>
</html>