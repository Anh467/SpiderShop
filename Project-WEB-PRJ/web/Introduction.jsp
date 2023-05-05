<%-- 
    Document   : Introduction
    Created on : 25 thg 1, 2023, 12:55:19
    Author     : 84384
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Introduction</title>
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <style>
            .sidebar-list .list {
                margin: 0 0 30px;
                position: relative;
                padding: 20px;
                border: 1px solid #a9aeb8;
                list-style: none;

            }
            .sidebar-list .list-name h2 {
                font-size: 18px;
                text-transform:uppercase;
                margin-bottom: 20px;
                padding-bottom: 10px;
                border-bottom: 2px solid #a9aeb8;
                text-align: center;
            }
            .row{
                width:100%;
            }
            .sidebar-list{
                margin-left:10%;
            }
            .page-wrapper{
                margin-left:5%;
                margin-right:5%;
            }
        </style>
    </head>
    <body>
        <div>
            <%@include file="ContentSubJSP/header.jsp" %>
        </div>  
        <div class="row wrapper-row">
            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="sidebar-list">
                    <div class="list ">
                        <div class="list-name title_block">
                            <h2>Blogs</h2>
                        </div>
                        <div class="layered layered-category">
                            <div class="layered-content ">

                                <li>
                                    <a style="text-decoration: none;" href="MainMenu.jsp" title="Main Menu" target="_self">
                                        Main Menu
                                    </a>
                                </li>
                                <li>
                                    <a style="text-decoration: none;" href="Introduction.jsp" title="Introduction" target="_self">
                                        Introduction
                                    </a>
                                </li>
                                </li>
                                <li>
                                    <a style="text-decoration: none;" href="News.jsp" title="News" target="_self">
                                        News
                                    </a>
                                </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-9 col-sm-10 col-xs-10 ">
                <div class="page-wrapper">
                    <div class="heading-page">
                        <h1>Introduction</h1>
                    </div>
                    <div class="wrapbox-content-page">
                        <div class="content-page ">
                            <div>Spiders are a group of arachnids that have two main body parts and eight legs. They belong to the order Araneae and are found all over the world in a variety of habitats, including forests, deserts, and grasslands. Some species of spiders are capable of spinning webs, while others hunt and capture their prey without the use of webs.

                                Spiders are considered beneficial to the environment as they play a crucial role in controlling the population of insects and other pests. However, some species of spiders can be harmful to humans, as they can bite and cause allergic reactions or spread diseases.

                                In terms of anatomy, spiders have a cephalothorax, which houses their eyes, mouth, and legs, and an abdomen that contains their digestive and reproductive systems. They have sharp fangs and venom, which they use to subdue their prey and protect themselves from predators.

                                Spiders are known for their remarkable ability to spin intricate webs, which they use for various purposes, such as catching prey, mating, and creating a home. Different species of spiders spin different types of webs, including orb webs, funnel webs, and tangle webs.

                                In conclusion, spiders are fascinating creatures that play an important role in the ecosystem. Understanding their biology and behavior can help us appreciate and protect these amazing creatures.</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div>
            <%@include file="ContentSubJSP/footer.jsp" %>
        </div> 
    </body>
</html>

