
<%@page import="com.bank.helper.sendEmail"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forgot UserName</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <link href="css/forgotPassword.css" rel="stylesheet" type="text/css"/>
        <style>
          
            #form_for_verfyid{
                display: none;
            }
            .form_verifyid{
                display: none;
            }
            .main{
                width: 100%;
                height: 400px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;

            }
            .forgot_password{
                width: 85%;
                height: 400px;
                background: #e1f2f8;
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
            }
            .forgot_left{
                width: 50%;
                height: 393px;

            }
            .forgot_right{
                width: 50%;
                height: 300px;

            }
            #form_for_id{
                width: 100%;
                height: 300px;
                /*background: tomato;*/
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 13px;
            }
            #form_for_verify{
                width: 100%;
                height: 300px;
                /*background: tomato;*/
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 13px;
                display: none;
            }
            .inpt{
                width: 80%;
                height: 40px;
                /*background: #007dfe;*/
                display: flex;
                align-items: center;
                justify-content: center;
                height: 75px;
            }
            .input_id{
                border: none;
                outline: none;
                border-bottom: 2px solid black;
                background: #e1f2f8;

                font-size: 20px;
                font-family: monospace;
                width: 90%;
                height: 49px;


            }
            .head_text{
                margin: 0;
                font-family: monospace;
                font-kerning: auto;
                font-synthesis: style;
                color: #e10d0d;

            }
            input::placeholder{
                text-align: center;
            }
            .comp_text{
                margin: 0;
                position: relative;
                top: -45px;
                left: 40px;
                font-family: monospace;
                color: darkmagenta;
            }
            .button-82-pushable {
                position: relative;
                border: none;
                background: transparent;
                padding: 0;
                cursor: pointer;
                outline-offset: 4px;
                transition: filter 250ms;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
            }

            .button-82-shadow {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 12px;
                background: hsl(0deg 0% 0% / 0.25);
                will-change: transform;
                transform: translateY(2px);
                transition:
                    transform
                    600ms
                    cubic-bezier(.3, .7, .4, 1);
            }

            .button-82-edge {
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 12px;
                background: linear-gradient(
                    to left,
                    hsl(340deg 100% 16%) 0%,
                    hsl(340deg 100% 32%) 8%,
                    hsl(340deg 100% 32%) 92%,
                    hsl(340deg 100% 16%) 100%
                    );
            }

            .button-82-front {
                display: block;
                position: relative;
                padding: 12px 27px;
                border-radius: 12px;
                font-size: 1.1rem;
                color: white;
                background: hsl(345deg 100% 47%);
                will-change: transform;
                transform: translateY(-4px);
                transition:
                    transform
                    600ms
                    cubic-bezier(.3, .7, .4, 1);
            }
            

            .button-82-pushable:hover {
                filter: brightness(110%);
                -webkit-filter: brightness(110%);
            }

            .button-82-pushable:hover .button-82-front {
                transform: translateY(-6px);
                transition:
                    transform
                    250ms
                    cubic-bezier(.3, .7, .4, 1.5);
            }

            .button-82-pushable:active .button-82-front {
                transform: translateY(-2px);
                transition: transform 34ms;
            }

            .button-82-pushable:hover .button-82-shadow {
                transform: translateY(4px);
                transition:
                    transform
                    250ms
                    cubic-bezier(.3, .7, .4, 1.5);
            }

            .button-82-pushable:active .button-82-shadow {
                transform: translateY(1px);
                transition: transform 34ms;
            }

            .button-82-pushable:focus:not(:focus-visible) {
                outline: none;
            }

            @media only screen and (max-width:600px){
                body{
                    background: red !important;
                }
                .button-82-front {
                    font-size: 1.25rem;
                    padding: 12px 42px;
                }
                .main{
                    background: red;
                    height: 1950px;
                }
                .forgot_password {
                    flex-direction: column;

                    width: 100%;

                    height: 1200px;

                }
                .forgot_left {
                    width: 75%;
                    height: 200px;
                    height: 699px;
                    height: 572px;
                }
                .forgot_right {
                    width: 89%;
                    height: 447px;

                }
                .head_text{
                    font-size: 47px;
                }
                #form_for_id {
                    gap: 43px;
                }
                .forgot_password {
                    gap: 85px;
                }
                .swal-overlay--show-modal .swal-modal {
                    opacity: 1;
                    pointer-events: auto;
                    box-sizing: border-box;
                    -webkit-animation: showSweetAlert .3s;
                    animation: showSweetAlert .3s;
                    will-change: transform;
                    width: 54%;
                    height: 200px;
                }
                .swal-text {
                    font-size: 30px;
                }
                .swal-footer {
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    margin-top: 54px;
                }
                .swal-button{
                    background-color: #076591;
                    padding: 20px 71px;

                }
                .swal-overlay--show-modal .swal-modal {
                    width: 69%;
                    height: 262px;
                }
                .input_id {
                    font-size: 37px;
                    text-align: center;
                }
                .forgot_password {
                    gap: 149px;
                }
            }
           
        </style>
    </head>
    <body>
        <div class="main">

            <div class="forgot_password">
                <div class="forgot_left">

                    <img src="./image/forgotpassword.webp" width="100%" height="100%" alt="alt"/>
                    <h2 class="comp_text" >Yours Bank Welcome You.. </h2>
                </div>
                <div class="forgot_right">

                    <form action="FogotPasswordServlet" method="post"  id="form_for_id">
                        <h1 class="head_text">Please Verify Your Email</h1>
                        <div class="inpt">
                            <input type="email" name="forgot_email" class="input_id"  placeholder="Please Enter Your Email "  >
                        </div>             
                        <div class="inpt">
                            <button class="button-82-pushable" role="button" id="form_for_btn">
                                <span class="button-82-shadow"></span>
                                <span class="button-82-edge"></span>
                                <span class="button-82-front text">Send OTP</span>
                            </button>
                            <span class="loader fa fa-spinner fa-spin fa-2x" id="loader"></span>

                        </div>
                    </form>
                    <form action="VerifyOtp"  id="form_for_verify"  >
                        <h1 class="head_text">Please Verify OTP</h1>
                        <!--                    <div class="inpt">
                                                <input type="email" name="forgot_email" class="input_id"  placeholder="Please Enter Your Email "  >
                                            </div>-->
                        <div class="inpt">
                            <input type="text" name="est_email_id" class="input_id"  placeholder="Please Enter OTP "  >
                        </div>   
                        <div class="inpt">
                            <button class="button-82-pushable" role="button"  id="form_for_btn2" >
                                <span class="button-82-shadow"></span>
                                <span class="button-82-edge"></span>
                                <span class="button-82-front text">Verify OTP</span>
                                <span class="fa fa-spinner fa-spin fa-2x" id="loader2" ></span>
                            </button>   
                        </div>
                    </form>
                </div>
            </div>
        </div>
        <!--        swweet alert -->
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <!--     j query   link-->
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $("#loader2").hide();
                 $("#form_for_btn2").show();
                $("#form_for_btn").show();
                
                $("#loader").hide();
                $("#form_for_id").on('submit', function (eve) {
                    eve.preventDefault();
                    let form_data = $(this).serialize();
                    console.log(form_data);
                    $("#form_for_btn").hide();
                    $("#loader").show();
                    $.ajax({
                        url: "FogotPasswordServlet",
                        type: 'POST',
                        data: form_data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if (data.trim() === "sucessful") {
                                $("#form_for_id").hide();
                                $("#form_for_verify").css("display", "flex");
                                swal("OTP sent Succesfully.....");
                                $("#form_for_btn").show();
                                $("#loader").hide();

                            } else if (data.trim() === "notpreset") {
                                swal("Wrong Email  Please Register First....");
                                $("#form_for_btn").show();
                                $("#loader").hide();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("error");
                            swal("Sorry ...some Internal Error Occured  Try Again!!");
                            $("#form_for_btn").show();
                            $("#loader").hide();
                        }
                    });
                });
                $("#form_for_verify").on('submit', function (element) {
                    $("#form_for_btn2").hide();
                    $("#loader2").show();
                    element.preventDefault();
                    let ver_data = $(this).serialize();
//                    console.log(ver_data);
                    $.ajax({
                        url: "VerifyOtp",
                        type: 'POST',
                        data: ver_data,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if (data.trim() === "success") {
                                swal("OTP Verified Successfully")
                                        .then((value) => {
                                            window.location = 'ChangeUserId.jsp';

                                        });
                                $("#form_for_btn2").show();
                                $("#loader2").hide();

                            } else if (data.trim() === "error") {
                                swal("OTP incorrect");
                                $("#form_for_btn2").show();
                                $("#loader2").hide();
                            } else {
                                swal(data);
                                $("#form_for_btn2").show();
                                $("#loader2").hide();
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("error");
                            $("#form_for_btn2").show();
                            $("#loader2").hide();
                        }
                    });
                });
            });


        </script>
    </body>
</html>
