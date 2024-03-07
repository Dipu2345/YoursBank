
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Yours Bank </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./account_open.css"/>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            *{
                margin: 0px;
                padding: 0px;
            }

            body{
                /*background-image: url("./image/money-7881948.jpg");*/
            }
            .main{
                width: 100%;
                height: 730px;
                background-color: rgb(40, 36, 36);
                display: flex;
                align-items: center;
                justify-content: center;
                background-image: url("./image/pexels-habib-904735.jpg");
                background-repeat: no-repeat;
                background-position: 0px;
                background-size: 100%;
                background-attachment: fixed;

            }
            form{
                border: 2px solid black;
                box-shadow: 0px 1px 10px black;
                padding: 20px;
                /*                 width: 30%;*/
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 10px;
                backdrop-filter: blur(2px);
                background: #0947fb47;
            }
            .sec{
                margin: 30px 20px;

            }
            .sec label{
                color: white
            }
            .sec span{
                color: white
            }
            input{
                border: none;
                border-bottom: 2px solid white;
                border-width: 100%;
                background: transparent;
                color: white;
                outline: none;

            }
            input:focus{
                border-bottom: 2px solid white !important;
            }
            input:active{
                outline: none;
                border-bottom: 2px solid white !important;
            }
            .etxtx{
                width: 100%;
                background-color: rgb(169, 143, 15);
                text-align: center;
                padding: 10px 0px ;
                font-size: 20px;
                font-weight: bold;
            }
            .main_form{
                width: 95%;


            }
            input::placeholder{
                color:white ;
                font-weight: bold;
            }
            .input_s{
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .btn{
                width: 90%;
                display: flex;
                align-items: center;
                justify-content: center;

            }

            button{
                border: none;
                border-radius: 10px;
                cursor: pointer;
               background-color: rgb(255 212 0 / 63%);
                padding: 10px;
            }
            button:hover{
                transform: scale(1,1.1);
                box-shadow: 0px 1px 10px rgba(169, 143, 15, 0.628);
            }

            .chg_wdth{
                width: 370px;
                height: 30px;
            }
            .chg_wdth:focus{
                border: none;

            }
            @media only  screen and (max-width:600px){
                .main {
                    width: 113%;
                    height: 1000px;
/*                      background-image: url("");*/
                      background-size: 0;
                }
                form {
                    padding: 0;
                }
                .main_form{
                        height: 615px;
                }
            }
        </style>
    </head>
    <body>
        <div class="main">
            <form action="SaveUserDetails"  method="post" id="main_form"  >

                <div class="main_form">    
                    <div class="etxtx">
                        open account
                    </div>
                    <div class="input_s">
                        <div class="input_sec">
                            <div class="sec">
                                <input class="chg_wdth" type="text" name="user_name" placeholder="Enter your name" id="user_name" oninput="return valname()" >
                                <p id="name_arror" style="color: red;"></p>
                            </div>
                            <div class="sec">
                                <input class="chg_wdth" type="text" name="user_fname" placeholder="Enter your father's name"id="f_name" oninput="return fvalname()">
                                <p id="fname_arror" style="color: red;"></p>
                            </div>
                            <div class="sec">
                                <input class="chg_wdth" type="number" name="user_mobnumber" placeholder="Enter your mobile number" id="user_mobile" oninput="return usermob()">
                                <p id="mobno_arror" style="color: red;"></p>   
                            </div>
                            <div class="sec">
                                <label>Gender&nbsp;&nbsp;</label><input type="radio" name="user_gender"value="male" ><span>male</span>
                                <input type="radio" name="user_gender" value="female"><span>female</span>
                            </div>
                            <div class="sec">
                                <input class="chg_wdth" type="mail" name="user_mail" placeholder="Enter your email" id="mail" oninput="return valmail()">
                                <p id="mail_arror" style="color: red;"></p>   

                            </div>
                            <div class="sec">
                                <input class="chg_wdth" type="number" name="user_addhar" placeholder="Enter your Addhar Number" id="adr"  oninput="return valaddhar()">
                                <p id="addhar_error" style="color: red;"></p>   
                            </div>
                            <div class="sec">
                                <input class="chg_wdth" type="text" name="user_pan" placeholder="Enter your PAN Number" id="pan" oninput="return valpan()">
                                <p id="pan_error" style="color: red;"></p>   
                            </div>

                            <div class="sec btn">
                                <span class="fa fa-spinner fa-4x fa-spin" id="loader" style="display:none"></span><br>
                                <button id="buttn">Click To Verify</button>
                                
                            </div
                            <div style="text-align: center">
                                <p style="text-align: center;color: white" >Have Account please<a style="color: blue;font-weight: bold" href="./login.jsp">Login</a></p>
                            </div>


                        </div>
                    </div>
                </div>   
            </form>
        </div>
        <script>
            function validate() {
                let name = document.getElementById("user_name").value;
                let flag = 0;
                if (name == "") {
                    document.getElementById("user_name").style.borderBottom = "2px solid red";
                    document.getElementById("user_name").focus();
                    document.getElementById("name_arror").innerHTML = "**please fill out this field";

                } else {
                    document.getElementById("user_name").style.borderBottom = "2px solid white";
                    document.getElementById("user_name").focus();
                    document.getElementById("name_arror").innerHTML = "";
                    flag++
                }


                let fname = document.getElementById("f_name").value
                if (fname == "") {
                    document.getElementById("f_name").style.borderBottom = "2px solid red";
                    document.getElementById("f_name").focus();
                    document.getElementById("fname_arror").innerHTML = "**please fill out this field";


                } else {
                    document.getElementById("f_name").style.borderBottom = "2px solid white";
                    document.getElementById("f_name").focus();
                    document.getElementById("fname_arror").innerHTML = "";
                    flag++

                }
                // ===============mobno
                let mob_no = document.getElementById("user_mobile").value;
                if (mob_no.length == 0) {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid red";
                    document.getElementById("user_mobile").style.color = "red";
                    document.getElementById("mobno_arror").innerHTML = "**please Fill this field"

                } else if (mob_no.length > 10) {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid red";
                    document.getElementById("user_mobile").style.color = "red";
                    document.getElementById("mobno_arror").innerHTML = "**please enter valid mobile no"

                } else {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid white";
                    document.getElementById("user_mobile").style.color = "white";
                    document.getElementById("mobno_arror").innerHTML = ""
                    flag++
                }
                // ===EMIL===
                let mail = document.getElementById("mail").value


                if (mail == "") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail_arror").innerHTML = "**Please fill ths field"

                } else if (mail.charAt(0) == "@") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail").style.color = "red";
                    document.getElementById("mail_arror").innerHTML = "**Please enter valid email"
                } else if (mail.charAt(mail.length - 4) != ".") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail").style.color = "red";
                    document.getElementById("mail_arror").innerHTML = "**Please enter valid email"

                } else {
                    document.getElementById("mail").style.borderBottom = "2px solid white";
                    document.getElementById("mail").style.color = "white";
                    document.getElementById("mail_arror").innerHTML = " "
                    flag++
                }
                // addhar validate
                let addhar = document.getElementById("adr").value
                if (addhar == "") {
                    document.getElementById("adr").style.borderBottom = "2px solid red"
                    document.getElementById("adr").style.color = "red";
                    document.getElementById("addhar_error").innerHTML = "**Please fill this field"
                } else if (addhar.length > 12) {
                    document.getElementById("adr").style.borderBottom = "2px solid red"
                    document.getElementById("adr").style.color = "red";
                    document.getElementById("addhar_error").innerHTML = "**Please enver valid addhar"
                } else {
                    document.getElementById("adr").style.borderBottom = "2px solid white"
                    document.getElementById("adr").style.color = "white"
                    document.getElementById("addhar_error").innerHTML = ""
                    flag++;
                }
                //  pan validate
                let pan = document.getElementById("pan").value
                if (pan == "") {
                    document.getElementById("pan").style.borderBottom = "2px solid red"
                    document.getElementById("pan").style.color = "red";
                    document.getElementById("pan_error").innerHTML = "**Please fill this field"
                } else if (pan.length > 10) {
                    document.getElementById("pan").style.borderBottom = "2px solid red"
                    document.getElementById("pan").style.color = "red";
                    document.getElementById("pan_error").innerHTML = "**Please enver valid pan"
                } else {
                    document.getElementById("pan").style.borderBottom = "2px solid white"
                    document.getElementById("pan").style.color = "white"
                    document.getElementById("pan_error").innerHTML = ""
                    flag++
                }

                if (flag == 6) {
                    return true;
                } else {
                    return false;
                }

            }
            function valname() {
                let name = document.getElementById("user_name").value;
                let flag = 0;
                if (name.length == 0) {
                    document.getElementById("user_name").style.borderBottom = "2px solid red";
                    document.getElementById("user_name").style.color = "red";

                    document.getElementById("name_arror").innerHTML = "**please fill out this field";
                    flag = 0;
                } else {
                    document.getElementById("user_name").style.borderBottom = "2px solid white";
                    document.getElementById("user_name").style.color = "white";

                    document.getElementById("name_arror").innerHTML = "";
                    flag = 1;
                }
                if (flag) {
                    return true;
                } else {
                    return false;
                }

            }
            function fvalname() {
                let fname = document.getElementById("f_name").value
                let flag = 0;
                if (fname.length == 0) {
                    document.getElementById("f_name").style.borderBottom = "2px solid red";
                    document.getElementById("f_name").style.color = "red";
                    document.getElementById("fname_arror").innerHTML = "**please fill this field"
                    flag = 0
                } else {
                    document.getElementById("f_name").style.borderBottom = "2px solid white";
                    document.getElementById("f_name").style.color = "white";
                    document.getElementById("fname_arror").innerHTML = ""
                    flag = 1;
                }
                if (flag) {
                    return true;
                } else {
                    return false;
                }
            }
            function  usermob() {
                let mob_no = document.getElementById("user_mobile").value;
                let flag = 0
                if (mob_no.length == 0) {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid red";
                    document.getElementById("user_mobile").style.color = "red";
                    document.getElementById("mobno_arror").innerHTML = "**please Fill this field"
                    flag = 0
                } else if (mob_no.length > 10 || mob_no.length < 10) {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid red";
                    document.getElementById("user_mobile").style.color = "red";
                    document.getElementById("mobno_arror").innerHTML = "**number must be 10 digit"
                    flag = 0
                } else {
                    document.getElementById("user_mobile").style.borderBottom = "2px solid white";
                    document.getElementById("user_mobile").style.color = "white";
                    document.getElementById("mobno_arror").innerHTML = ""
                    flag = 1;
                }
                if (flag) {
                    return true;
                } else {
                    return false;
                }
                // if(mob_no.charAt(0)==6 ||mob_no.charAt(0)==7 || mob_no.charAt(0)==8 || mob_no.charAt(0)==9){
                //     document.getElementById("user_mobile").style.borderBottom="2px solid white";
                //     document.getElementById("user_mobile").style.color="green";
                //     document.getElementById("mobno_arror").innerHTML = ""

                // }
                // else{
                //     document.getElementById("user_mobile").style.borderBottom="2px solid red";
                //     document.getElementById("user_mobile").style.color="red";
                //     document.getElementById("mobno_arror").innerHTML = "**please enter valid mobile no"
                // }
            }
            function valmail() {
                let mail = document.getElementById("mail").value
                let flag = 0;

                if (mail == "") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail_arror").innerHTML = "**Please fill ths field"

                } else if (mail.charAt(0) == "@") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail").style.color = "red";
                    document.getElementById("mail_arror").innerHTML = "**Please enter valid email"
                } else if (mail.charAt(mail.length - 4) != ".") {
                    document.getElementById("mail").style.borderBottom = "2px solid red";
                    document.getElementById("mail").style.color = "red";
                    document.getElementById("mail_arror").innerHTML = "**Please enter valid email"

                } else {
                    document.getElementById("mail").style.borderBottom = "2px solid white";
                    document.getElementById("mail").style.color = "white";
                    document.getElementById("mail_arror").innerHTML = " "
                }

            }
            function valaddhar() {
                let addhar = document.getElementById("adr").value
                if (addhar == "") {
                    document.getElementById("adr").style.borderBottom = "2px solid red"
                    document.getElementById("adr").style.color = "red";
                    document.getElementById("addhar_error").innerHTML = "**Please fill this field"
                } else if (addhar.length > 12) {
                    document.getElementById("adr").style.borderBottom = "2px solid red"
                    document.getElementById("adr").style.color = "red";
                    document.getElementById("addhar_error").innerHTML = "**Please enver valid addhar"
                } else {
                    document.getElementById("adr").style.borderBottom = "2px solid white"
                    document.getElementById("adr").style.color = "white"
                    document.getElementById("addhar_error").innerHTML = ""
                }
            }
            function valpan() {
                let pan = document.getElementById("pan").value
                if (pan == "") {
                    document.getElementById("pan").style.borderBottom = "2px solid red"
                    document.getElementById("pan").style.color = "red";
                    document.getElementById("pan_error").innerHTML = "**Please fill this field"
                } else if (pan.length > 10) {
                    document.getElementById("pan").style.borderBottom = "2px solid red"
                    document.getElementById("pan").style.color = "red";
                    document.getElementById("pan_error").innerHTML = "**Please enver valid pan"
                } else {
                    document.getElementById("pan").style.borderBottom = "2px solid white"
                    document.getElementById("pan").style.color = "white"
                    document.getElementById("pan_error").innerHTML = ""
                }

            }
        </script>
        <!--        swweet alert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!--     j query   link-->
        <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  <script>
      $(document).ready(function(){
         $("#main_form").on('submit',function(event){
            event.preventDefault();
            let form = new FormData(this);
            
            $("#loader").show();
            $("#buttn").hide();
            $.ajax({
               url: "SaveUserDetails",
               type: 'POST',
               data: form,
               success: function (data, textStatus, jqXHR) {
                       
                        if(data.trim()==="done"){
                        swal("Registred Sucessfully ...We Are Redirecting You To Login Page")
                                .then((value) => {
                                  window.location='login.jsp';
                            $("#loader").hide();
                             $("#buttn").show();
                         
                            });
                            }
                         else{
                             swal(data);
                              $("#loader").hide();
                             $("#buttn").show();
                         }
                    },
               error: function (jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR);
                        
                           $("#loader").hide();
                             $("#buttn").show();
                    },
                processData: false,
                contentType: false
                
            });
         });
      });
      
      
      
  </script>

    </body>
</html>
