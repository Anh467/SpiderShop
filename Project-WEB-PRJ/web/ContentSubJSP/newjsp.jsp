<%-- 
    Document   : newjsp
    Created on : Feb 10, 2023, 10:09:15 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="../bootstrap-5.0.2-dist/css/bootstrap.min.css"/>
        <style>
            @import url("https://fonts.googleapis.com/css?family=Raleway:300,400");
            * {
                margin: 0;
                padding: 0;
            }
            .ani-block{
                width: 100%;
                display: flex;
                flex-wrap: wrap;
                flex-direction: row;
                justify-content: center;
            }
            .content h4{
                margin-bottom: 0;
                text-align: center;
                width: 100%;
                color: black;
                margin-top:  0;
                padding: 2px 0 2px 0;
                font-family: Arial, Helvetica;
            }
            .content{
                background-color: gray;
                width: 100%;
                min-width: 250px;
                max-width: 400px;
                border-radius: 5px;
            }

            .content p{
                color: white;
            }
            .ani-block .content .thumbex {
                width: 100%;
                min-width: 250px;
                max-width: 400px;
                -webkit-flex: 1;
                -ms-flex: 1;
                flex: 1;
                overflow: hidden;
                outline-offset: -15px;
                border-radius: 5px;
            }
            .ani-block .thumbex .thumbnail {
                overflow: hidden;
                width: 100%;
                min-width: 250px;
                max-width: 400px;
                height: 268px;
                position: relative;
                opacity: 0.88;
                backface-visibility: hidden;
                transition: all 0.4s ease-out;
            }
            .ani-block .thumbex .thumbnail .img {
                position: absolute;
                z-index: 1;
                left: 50%;
                top: 50%;
                height: 112.5%;
                width: auto;
                transform: translate(-50%, -50%);
                backface-visibility: hidden;
            }
            .ani-block .thumbex .thumbnail span{
                position: absolute;
                z-index: 2;
                top: 5%;
                background: rgba(0, 0, 0, 0.7);
                padding: 40%;
                text-align: center;
                color: white;
                letter-spacing: 0.2px;
                transition: all 0.3s ease-out;
            }
            .ani-block .thumbex .thumbnail:hover {
                backface-visibility: hidden;
                transform: scale(1.1, 1.1);
                opacity: 1;
            }
            .ani-block .thumbex .thumbnail:hover .img2 {
                opacity: 0;
                display: none;
            }

            .ani-block .thumbex .thumbnail label h4{
                position: absolute;
                background: gray;
                opacity: 50%;
                z-index: 2;
                top: 83%;
                left: 0;
                right: 0;
                background: rgba(0, 0, 0, 0.7);
                padding: 15px 0.5% 15px 0.5%;
                text-align: center;
                font-size: 15px;
                color: white;
                font-weight:100;
                font-family: "Raleway", sans-serif;
            }
            #name-price{
                color: white;
                text-align: center;
                opacity: 1;
            }
        </style>

</head>
<body>
    <%String img_link1 = request.getParameter("img_link1");
        String img_link2 = request.getParameter("img_link2");
        String price = request.getParameter("price");
        String name = request.getParameter("name");
        String id = request.getParameter("id");
    %>

    <form action="SendToAnimalDetail">
        <div class="ani-block">

            <div class="content">
                <div class="thumbex">
                    <div class="thumbnail"> 

                        <p name="id" style="display: none;"><%=id%></p>
                        <input type="image" style="object-fit: cover;" class="img img-responsive img-fluid img1" src="<%=img_link1%>" 
                            alt="alt"/>
                        <input type="image" style="object-fit: cover;" class="img img-responsive img-fluid img2" src="<%=img_link2%>" 
                            alt="alt"/>
                        <label><h4 id="name-price"><%=name%> - <%=price%></h4></label>
                    </div>
                </div>
            </div>

        </div>
                    </form>
</body>
</html>