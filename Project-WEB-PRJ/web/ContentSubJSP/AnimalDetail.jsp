<%-- 
    Document   : AnimalDetail
    Created on : 16 thg 2, 2023, 03:49:07
    Author     : 84384
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <link rel="stylesheet" href="../bootstrap-5.0.2-dist/css/bootstrap.min.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <!--header-->
        <%String url="https://cdn.mos.cms.futurecdn.net/bLQtoRrFpxRvLLPk7YdsQg.jpg";
        String alt="spider";%>
        <div class="row">
            <div class="row col-md-5" style="text-align: center;">
               <%@include file="BlockAni.jsp" %>
            </div>
             <div class="row col-md-7">
                 <p>Nếu văn học được ví như một bản hòa ca của cảm xúc, 
                     nghệ thuật và hình tượng thì hẳn ca dao là nốt nhạc đẹp đẽ nhất. 
                     Dù ra đời sớm nhất nhưng không vì vậy mà nó không đẹp và đậm chất nghẹ thuật. 
                     Ca dao là nốt nhạc được tạo ra từ cung đàn của cảm xúc, 
                     và đọng lại bởi cái tâm của những người lao động. Trong đó, 
                     ca dao về tình yêu đôi lứa là thanh âm trong trẻo nhất trong bản giao hưởng ca dao. 
                     Những câu ca dao về tình yêu đôi lứa đẹp đến độ, chúng ta phải thốt lên rằng tại sao tình yêu khi xưa lại tinh tế và chân thành đến như vậy. Trong đó, bài ca dao Khăn thương nhớ ai là bài ca dao nổi bật nhất.</p>
            </div>
        </div>
        <!--footer-->
    </body>
</html>
