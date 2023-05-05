/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//st, address_id
function openNewWindow(st, address_id)
    {
     //   window.open("https://www.w3schools.com");
    window.open(st+address_id, "", "width=600px; height=400;");
    }
    //+"?id="+address_id
function callServlet(methodType, link, para){
    var xhr = new XMLHttpRequest();
    if(methodType=='POST'){
        xhr.open(methodType, link, true);
        xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhr.send();
    }else if(methodType=='GET'){
        xhr.open(methodType, link+para, true);
        xhr.send();
    }
}
function load_servlet(methodType, link, para) {
                document.getElementById('cal').action= link+para;
                document.getElementById('cal').method= methodType;
                document.getElementById('cal').submit();
            }
