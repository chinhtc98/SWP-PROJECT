<%-- 
    Document   : login
    Created on : Jan 10, 2022, 10:35:39 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Another Login Demo</title>
        <link rel="stylesheet" href="style.css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Montserrat:600|Noto+Sans|Open+Sans:400,700&display=swap');
        *{
            margin: 0;
            padding: 0;
            border-radius: 5px;
            box-sizing: border-box;
        }
        body{
            height: 100vh;
            display: flex;
            align-items: center;
            text-align: center;
            font-family: sans-serif;
            justify-content: center;
            background: url(image/bg.jpg);
            background-size: cover;
            background-position: center;
        }
        .container{
            position: relative;
            width: 400px;
            background: white;
            padding: 60px 40px;
        }
        header{
            font-size: 40px;
            margin-bottom: 30px;
            font-family: 'Montserrat', sans-serif;
        }
        .input-field, form .button{
            margin: 25px 0;
            position: relative;
            height: 50px;
            width: 100%;
        }
        .input-field input{
            height: 100%;
            width: 100%;
            border: 1px solid silver;
            padding-left: 15px;
            outline: none;
            font-size: 19px;
            transition: .4s;
        }
        input:focus{
            border: 1px solid #2f3640;
        }
        .input-field label, span.show{
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
        }
        .input-field label{
            left: 15px;
            pointer-events: none;
            color: grey;
            font-size: 18px;
            transition: .4s;
        }
        span.show{
            right: 20px;
            color: #111;
            font-size: 14px;
            font-weight: bold;
            cursor: pointer;
            user-select: none;
            visibility: hidden;
            font-family: 'Open Sans', sans-serif;
        }
        input:valid ~ span.show{
            visibility: visible;
        }
        input:focus ~ label,
        input:valid ~ label{
            transform: translateY(-33px);
            background: white;
            font-size: 16px;
            color: #2f3640;
        }
        form .button{
            margin-top: 30px;
            overflow: hidden;
            z-index: 111;
        }
        .button .inner{
            position: absolute;
            height: 100%;
            width: 300%;
            left: -100%;
            z-index: -1;
            transition: all .4s;
            background: -webkit-linear-gradient(right,#00dbde,#fc00ff,#00dbde,#fc00ff);
        }
        .button:hover .inner{
            left: 0;
        }
        .button button{
            width: 100%;
            height: 100%;
            border: none;
            background: none;
            outline: none;
            color: white;
            font-size: 20px;
            cursor: pointer;
            font-family: 'Montserrat', sans-serif;
        }
        .container .auth{
            margin: 35px 0 20px 0;
            font-size: 25px;
            font-family: 'Montserrat', sans-serif;
            color: black;
        }
        .links{
            display: flex;
            cursor: pointer;

        }
        .teacher, .student, .bussiness{
            height: 40px;
            width: 100%;
            border: 1px solid silver;
            border-radius: 3px;
            margin: 0 10px;
            transition: .4s;
            padding-bottom: 5px;

        }
        .teacher:hover{
            border: 1px solid #3993dd;
        }
        .student:hover{
            border: 1px solid #9339dd;
        }
        .bussiness:hover {
            border: 1px solid #39d8dd;
        }
        .teacher i, .teacher span{
            color: #3993dd;
        }
        .student i, .student span{
            color: #9339dd;
        }
        .bussiness i, .bussiness span{
            color: #39d8dd;
        }
        .links i{
            font-size: 23px;
            line-height: 40px;
            margin-left: -90px;
        }
        .links span{
            position: absolute;
            font-size: 17px;
            font-weight: bold;
            padding-left: 8px;
            font-family: 'Open Sans', sans-serif;
        }

        /* selected box */


        .containers {
            padding-top: 5px;
            padding-left: 10px;
        }

        .select-box {
            display: flex;
            width: 300px;
            flex-direction: column;
        }

        .select-box .options-container {
            background: #2f3640;
            color: #f5f6fa;
            max-height: 0;
            width: 100%;
            opacity: 0;
            transition: all 0.4s;
            border-radius: 8px;
            overflow: hidden;

            order: 1;
        }

        .selected {
            background: #2f3640;
            border-radius: 8px;
            margin-bottom: 8px;
            color: #f5f6fa;
            position: relative;

            order: 0;
        }

        .selected::after {
            content: "";
            background: url("img/arrow-down.svg");
            background-size: contain;
            background-repeat: no-repeat;

            position: absolute;
            height: 100%;
            width: 32px;
            right: 10px;
            top: 5px;

            transition: all 0.4s;
        }

        .select-box .options-container.active {
            max-height: 240px;
            opacity: 1;
            overflow-y: scroll;
        }

        .select-box .options-container.active + .selected::after {
            transform: rotateX(180deg);
            top: -6px;
        }

        .select-box .options-container::-webkit-scrollbar {
            width: 8px;
            background: #0d141f;
            border-radius: 0 8px 8px 0;
        }

        .select-box .options-container::-webkit-scrollbar-thumb {
            background: #525861;
            border-radius: 0 8px 8px 0;
        }

        .select-box .option,
        .selected {
            padding: 12px 24px;
            cursor: pointer;
        }

        .select-box .option:hover {
            background: #414b57;
        }

        .select-box label {
            cursor: pointer;
        }

        .select-box .option .radio {
            display: none;
        }

    </style>
    <body>
        <div class="container">
            <header>Bussiness</header>
            <form>
                <div class="input-field">
                    <input type="text" required>
                    <label>Username</label>
                </div>
                <div class="input-field">
                    <input class="pswrd" type="password" required>
                    <span class="show">SHOW</span>
                    <label>Password</label>
                </div>
                <div class="button">
                    <div class="inner"></div>
                    <button>LOGIN</button>
                </div>
            </form>
            <div class="auth">Sinh vi??n, Gi???ng vi??n, C??n b??? ??H-FPT</div>
            <!-- Selected box -->
            <div class="containers">


                <div class="select-box">
                    <div class="options-container">

                        <div class="option">
                            <input
                                type="radio"
                                class="radio"
                                id="campus"
                                name="category"
                                />
                            <label for="campus">Select Campus</label>
                        </div>

                        <div class="option">
                            <input type="radio" class="radio" id="hl" name="category" />
                            <label for="hl">Ho?? L???c</label>
                        </div>

                        <div class="option">
                            <input type="radio" class="radio" id="hcm" name="category" />
                            <label for="hcm">H??? Ch?? Minh</label>
                        </div>

                        <div class="option">
                            <input type="radio" class="radio" id="dn" name="category" />
                            <label for="dn">???? N???ng</label>
                        </div>

                        <div class="option">
                            <input type="radio" class="radio" id="ct" name="category" />
                            <label for="ct">C???n Th??</label>
                        </div>

                        <div class="option">
                            <input type="radio" class="radio" id="qn" name="category" />
                            <label for="qn">Quy Nh??n</label>
                        </div> 

                    </div>

                    <div class="selected">
                        Select Campus
                    </div>
                </div>
            </div>
            <!-- -------- -->

            <div class="links">
                <!-- <div class="bussiness">
                  <i class="fab fa-google-plus-square"><span>Bussiness</span></i>
                </div> -->
                <div class="teacher">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/Create_Group/LoginGoogleController&response_type=code
                       &client_id=90676323264-m344qcc3bv607iu3jttu76l9ec5g0ekt.apps.googleusercontent.com&approval_prompt=force"><i class="fab fa-google-plus-square"><span>Teacher</span></i></a></br>  
                    <h4>${requestScope.ERROR_LOGIN}</h4>
                </div>
                <div class="student">
                    <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8084/Create_Group/LoginGoogleController&response_type=code
                       &client_id=90676323264-m344qcc3bv607iu3jttu76l9ec5g0ekt.apps.googleusercontent.com&approval_prompt=force"><i class="fab fa-google-plus-square"><span>Student</span></i></a></br>  
                    <h4>${requestScope.ERROR_LOGIN}</h4>
                </div>
            </div>
            <!-- <div class="signup">
              Not a member? <a href="signup.html">Signup now</a>
            </div> -->
        </div>
        <script>
            var input = document.querySelector('.pswrd');
            var show = document.querySelector('.show');
            show.addEventListener('click', active);
            function active() {
                if (input.type === "password") {
                    input.type = "text";
                    show.style.color = "#1DA1F2";
                    show.textContent = "HIDE";
                } else {
                    input.type = "password";
                    show.textContent = "SHOW";
                    show.style.color = "#111";
                }
            }
        </script>

        <script>
            const selected = document.querySelector(".selected");
            const optionsContainer = document.querySelector(".options-container");

            const optionsList = document.querySelectorAll(".option");

            selected.addEventListener("click", () => {
                optionsContainer.classList.toggle("active");
            });

            optionsList.forEach(o => {
                o.addEventListener("click", () => {
                    selected.innerHTML = o.querySelector("label").innerHTML;
                    optionsContainer.classList.remove("active");
                });
            });

        </script>

    </body>
</html>
