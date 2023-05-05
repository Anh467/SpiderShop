<%-- 
    Document   : signup
    Created on : Feb 16, 2023, 10:52:23 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="bootstrap-5.0.2-dist/css/bootstrap.min.css" rel="stylesheet">
        <script src="bootstrap-5.0.2-dist/js/bootstrap.bundle.min.js"></script>
        <title>JSP Page</title>
                <style>
            * {
                box-sizing: border-box
            }
            input[type=text], input[type=password], input[type=date]  {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                border: none;
                background: #f1f1f1;
            }
            input[type=radio]{
                padding-bottom: 15px;
                margin: 10px 0 25px 0;
                justify-content: center;
                width:12%;
            }
            input[type=text]:focus, input[type=password]:focus, input[date]:focus {
                background-color: #ddd;
                outline: none;
            }

            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }
            button {
                background-color: #04AA6D;
                color: white;
                padding: 14px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }
            button:hover {
                opacity:1;
            }
            .cancelbtn {
                padding: 14px 20px;
                background-color: #f44336;
            }
            .cancelbtn, .signupbtn {
                float: left;
                width: 50%;
                justify-content: center;
            }
            .container {
                padding: 16px;
            }
            .head{
                margin-left:25% ;
                margin-right:25% ;
            }
            .clearfix::after {
                content: "";
                clear: both;
                display: table;
            }
            .clearfix{
                margin-left:17% !important;
                margin-right:17% !important;
            }

            .message{
                display:none;
            }
                
        </style>
    </head>

    <body>
        
        <form action="Verify" method="get">
            <div class="container">
                <div class ="head">
                    <h1>Sign Up</h1>
                    <p>Please fill in this form to create an account.</p>
                    <label><b>Your name</b></label>
                    <input name ="name" value="${name}"  type="text" class="form-control" placeholder="Enter yourname" id="name" required>
                    <label><b>Gender</b></label>
                        <input type="radio" id="Male" name="gender" value="Male">Male
                        <input type="radio" id="Female" name="gender" value="Female"> Female   
                    <br>

                    <label><b>Date of birth</b></label>
                    <input name ="dob" value="${dob}" type="date" class="form-control" id="dob" required>

                    <label><b>Phone</b></label>
                    <input name ="phone" value="${phone}"  type="text" class="form-control" id="phone" required>

                    <label><b>Email</b></label>
                    <input name ="email" value="${email}"  type="text" class="form-control" id="email" required>

                    <label><b>Username</b></label>
                    <input name ="user" value="${user}"  type="text" class="form-control" placeholder="Enter Username" id="user" required>
                    <p style="color: red;">${name_status}</p>
                    <label><b>Password</b></label>
                    <input name ="pass" value="${pass}"  type="password" class="form-control" placeholder="Repeat Password" id="psw" 
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                           title="Must contain at least one number and one uppercase and lowercase letter, 
                           and at least 8 or more characters" required> 

                    <label><b>Repeat Password</b></label>
                    <input type="password" class="form-control" placeholder="Repeat Password" id="psw-repeat"
                           pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" 
                           title="Password are not same" required>

                    <label>
                        <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
                    </label>
                    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                </div>
                <div class="clearfix">
                    <button type="button" class = "cancelbtn">Cancel</button>
                    <button type="submit" class="signupbtn">Sign Up</button>
                </div>
            </div>
        </form>

        <div class ="message">
            <h3>Password must contain the following:</h3>
            <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
            <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
            <p id="number" class="invalid">A <b>number</b></p>
            <p id="length" class="invalid">Minimum <b>8 characters</b></p>
        </div>

        <script>
            var myInput = document.getElementById("psw");
            var letter = document.getElementById("letter");
            var capital = document.getElementById("capital");
            var number = document.getElementById("number");
            var length = document.getElementById("length");
            var repeat = document.getElementById("psw-repeat");

            myInput.onfocus = function () {
                document.getElementById("message").style.display = "block";
            };

            myInput.onblur = function () {
                document.getElementById("message").style.display = "none";
            };
            myInput.onkeyup = function () {
                // Validate lowercase letters
                var lowerCaseLetters = /[a-z]/g;
                if (myInput.value.match(lowerCaseLetters)) {
                    letter.classList.remove("invalid");
                    letter.classList.add("valid");
                } else {
                    letter.classList.remove("valid");
                    letter.classList.add("invalid");
                }

                // Validate capital letters
                var upperCaseLetters = /[A-Z]/g;
                if (myInput.value.match(upperCaseLetters)) {
                    capital.classList.remove("invalid");
                    capital.classList.add("valid");
                } else {
                    capital.classList.remove("valid");
                    capital.classList.add("invalid");
                }

                // Validate numbers
                var numbers = /[0-9]/g;
                if (myInput.value.match(numbers)) {
                    number.classList.remove("invalid");
                    number.classList.add("valid");
                } else {
                    number.classList.remove("valid");
                    number.classList.add("invalid");
                }

                // Validate length
                if (myInput.value.length >= 8) {
                    length.classList.remove("invalid");
                    length.classList.add("valid");
                } else {
                    length.classList.remove("valid");
                    length.classList.add("invalid");
                }
            };
            // When the user starts to type something inside the password field

            function validateForm() {
               
            }
            ;
        </script>
    </body>
</html>
