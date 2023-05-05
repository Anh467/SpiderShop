setInterval(setClock,1000);
const hourHand = document.getElementById('hour');
const minuteHand = document.getElementById('minute');
const secondHand = document.getElementById('second');
const displayhour = document.getElementById('id_hours');
const displayminute = document.getElementById('id_minute');
var x="hi";
function setClock(){
    const currentDate = new Date ();
    const secondsRatio = currentDate.getSeconds()/60;
    const minutesRatio =(secondsRatio + currentDate.getMinutes())/60;
    const hoursRatio =  (minutesRatio + currentDate.getHours() ) / 12;
    // alert("time is: "+hoursRatio+", minute: "+minutesRatio +", second: "+ secondsRatio)
    document.getElementById("IDDisplay").innerHTML="time is: "+currentDate.getHours()+", minute: "+currentDate.getMinutes() +", second: "+ currentDate.getSeconds();
    // const minutesRatio = currentDate.getMinutes()/60 
    // setRotation(hourHand, secondsRatio)
    setRotation(minuteHand, minutesRatio);
    setRotation(secondHand, secondsRatio);
    setRotation(hourHand, hoursRatio);
    document.getElementById('id_hours').innerHTML= ""+currentDate.getHours();
    document.getElementById('id_minute').innerHTML= ""+currentDate.getMinutes();
}
function setRotation(ele, rotationRatio) {
    ele.style.setProperty( '--rotation', rotationRatio*360);
}

// document.querySelector("#mybutton+").onclick= function(){
//     alert("he");
// }
function action(){
    var getbutton= document.getElementById("mybutton");
    getbutton.setAttribute("style", "background-color:red;");
}
setClock();