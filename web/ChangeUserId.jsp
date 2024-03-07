

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change USER </title>
        <style>

            .head_data_for_atm{
                width: 100%;
                height: 200px;
                display: flex;
                align-items: center;
                justify-content: space-evenly;
                margin-top: 30px;
            }
            .left_for_atm{
                width: 20%;
                height: 160px;
                background: #dfdfdf;
                ;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 10px;
                border-left: 3px solid #0032fb;
                box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
            }
            .right_for_atm{
                width: 20%;
                height: 160px;
                background: #dfdfdf;
                ;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 10px;
                border-right: 3px solid #0032fb;
                box-shadow: rgba(0, 0, 0, 0.09) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
            }
            .leftfor_image{
                width: 36%;
                height: 70px;
            }
            .main_page_for_atm{
                width: 100%;
                height: 400px;
                background: #f8f8f8;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .form_p{
                display: none;
            }
            .form_p1{
                display: none;
            }


            /* CSS */
            .button-14 {
                touch-action: manipulation;
                -webkit-appearance: none;
                appearance: none;
                position: relative;
                border-width: 0;
                padding: 0 8px 12px;
                min-width: 10em;
                box-sizing: border-box;
                background: transparent;
                font: inherit;
                cursor: pointer;
            }

            .button-14-top {
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                z-index: 0;
                padding: 8px 16px;
                transform: translateY(0);
                text-align: center;
                color: #fff;
                text-shadow: 0 -1px rgba(0, 0, 0, .25);
                transition-property: transform;
                transition-duration: .2s;
                -webkit-user-select: none;
                user-select: none;
            }

            .button-14:active .button-14-top {
                transform: translateY(6px);
            }

            .button-14-top::after {
                content: '';
                position: absolute;
                z-index: -1;
                border-radius: 4px;
                width: 100%;
                height: 100%;
                box-sizing: content-box;
                background-image: radial-gradient(#cd3f64, #9d3656);
                text-align: center;
                color: #fff;
                box-shadow: inset 0 0 0px 1px rgba(255, 255, 255, .2), 0 1px 2px 1px rgba(255, 255, 255, .2);
                transition-property: border-radius, padding, width, transform;
                transition-duration: .2s;
            }

            .button-14:active .button-14-top::after {
                border-radius: 6px;
                padding: 0 2px;
            }

            .button-14-bottom {
                position: absolute;
                z-index: -1;
                bottom: 4px;
                left: 4px;
                border-radius: 8px / 16px 16px 8px 8px;
                padding-top: 6px;
                width: calc(100% - 8px);
                height: calc(100% - 10px);
                box-sizing: content-box;
                background-color: #803;
                background-image: radial-gradient(4px 8px at 4px calc(100% - 8px), rgba(255, 255, 255, .25), transparent), radial-gradient(4px 8px at calc(100% - 4px) calc(100% - 8px), rgba(255, 255, 255, .25), transparent), radial-gradient(16px at -4px 0, white, transparent), radial-gradient(16px at calc(100% + 4px) 0, white, transparent);
                box-shadow: 0px 2px 3px 0px rgba(0, 0, 0, 0.5), inset 0 -1px 3px 3px rgba(0, 0, 0, .4);
                transition-property: border-radius, padding-top;
                transition-duration: .2s;
            }

            .button-14:active .button-14-bottom {
                border-radius: 10px 10px 8px 8px / 8px;
                padding-top: 0;
            }

            .button-14-base {
                position: absolute;
                z-index: -2;
                top: 4px;
                left: 0;
                border-radius: 12px;
                width: 100%;
                height: calc(100% - 4px);
                background-color: rgba(0, 0, 0, .15);
                box-shadow: 0 1px 1px 0 rgba(255, 255, 255, .75), inset 0 2px 2px rgba(0, 0, 0, .25);
            }
            /*=========================================================================================*/
            .button-29 {
                align-items: center;
                appearance: none;
                background-image: radial-gradient(100% 100% at 100% 0, #5adaff 0, #5468ff 100%);
                border: 0;
                border-radius: 6px;
                box-shadow: rgba(45, 35, 66, .4) 0 2px 4px,rgba(45, 35, 66, .3) 0 7px 13px -3px,rgba(58, 65, 111, .5) 0 -3px 0 inset;
                box-sizing: border-box;
                color: #fff;
                cursor: pointer;
                display: inline-flex;
                font-family: "JetBrains Mono",monospace;
                height: 48px;
                justify-content: center;
                line-height: 1;
                list-style: none;
                overflow: hidden;
                padding-left: 16px;
                padding-right: 16px;
                position: relative;
                text-align: left;
                text-decoration: none;
                transition: box-shadow .15s,transform .15s;
                user-select: none;
                -webkit-user-select: none;
                touch-action: manipulation;
                white-space: nowrap;
                will-change: box-shadow,transform;
                font-size: 18px;
            }

            .button-29:focus {
                box-shadow: #3c4fe0 0 0 0 1.5px inset, rgba(45, 35, 66, .4) 0 2px 4px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
            }

            .button-29:hover {
                box-shadow: rgba(45, 35, 66, .4) 0 4px 8px, rgba(45, 35, 66, .3) 0 7px 13px -3px, #3c4fe0 0 -3px 0 inset;
                transform: translateY(-2px);
            }

            .button-29:active {
                box-shadow: #3c4fe0 0 3px 7px inset;
                transform: translateY(2px);
            }
            .work_page{
                width: 100%;
                height: 300px;
                display: flex;
                align-items: center;
                justify-content: center;
                /*background: #5adaff;*/
            }
            .inside_work_page{
                width: 70%;
                height: 100%;
                /*background: red;*/
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .setUserId{
                width: 40%;
                height: 200px;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction:column;
                background: #0f0f6fbd;
                border-left: 3px solid red;
                box-shadow: rgba(0, 0, 0, 0.45) 0px 25px 20px -20px;
            }
            .form_set_id{
                width: 100%;
                height: 100%;

            }
            .inp1{
                width: 100%;
                height: 50px;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .inp1 input{
                height: 20px;
                width: 60%;
                padding: 3px 0px;
                border: none;
                outline: none;
                border-bottom: 3px solid red;
                background: transparent;
                text-align: center;
                color: white;
            }
            input::placeholder{
                color: white;
            }
            .form_set_id{
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 10px;
                flex-direction: column;
            }
            .alert_before_run{
                color: red;
                font-family: monospace;
                
            }
            .setUserId{
                display: none;
            }
           @media (max-width: 768px) {
  /* For mobile phones: */
  body{
      background: red;
  }
  .head_data_for_atm{
      background: red;
  }
  
}
/*            @media (min-width: 768px) {
                .head_data_for_atm{
                    height: 1000px;
                    background: red;
                    margin-top: -70px;
                }
                .left_for_atm {
                    width: 43%;
                     height: 369px;
                }
                .right_for_atm {
                    width: 43%;
                     height: 369px;
                }
               .leftfor_image {
                 width: 58%;
                height: 196px;
                }
                .button-14 {
                    min-width: 28em;
                }
                .button-14-top {
                    padding: 18px 16px;
                    font-size: 25px;
                }
                .setUserId {
                    width: 105%;
                     height: 642px;
                }
                .form_set_id {
                    gap: 71px;
                }
                .inp1 input {
                    width: 80%;
                    height: 44px;
                    font-size: 32px;
                }
                .inp1{
                    height: 66px;
                }
                .font_for_media{
                    font-size: 33px !important;
                }
                .alert_before_run{
                    font-size: 40px;
                    text-shadow:0 0 10px black;
                }
            }*/
        </style>
    </head>
    <body>

        <div class="head_data_for_atm">
            <div class="left_for_atm">
                <div class="leftfor_image"><img src="./image/changepassword.png" width="100%" height="100%" alt="alt"/></div>
                <div class="leftforbtn">
                    <button class="button-14" role="button"  id="changeUserId">
                        <div class="button-14-top text">Change UserId </div>
                        <div class="button-14-bottom"></div>
                        <div class="button-14-base"></div>
                    </button>

                </div>
            </div>
            <div class="right_for_atm">
                <div class="leftfor_image"><img src="./image/getpassword.png" width="100%" height="100%" alt="alt"/></div>
                <div class="leftforbtn"> 
                    <button class="button-14" role="button" id="getUserId" >
                        <div class="button-14-top text">Get UserId</div>
                        <div class="button-14-bottom"></div>
                        <div class="button-14-base"></div>
                    </button>
                </div>
            </div>
        </div>

        <div class="work_page">
            <div class="inside_work_page">
                <div class="setUserId">
                    <form action="action" id="form_to_set_id" class="form_set_id" >
                        <div class="inp1">
                            <input type="text" name="uer_id"  id="first_id" placeholder="Enter New UserName " >
                        </div>
                        <div class="inp1">
                            <input type="text" name="confirm_id" id="second_id" placeholder="Confirm UserName" class="cnf_username" >
                        </div>
                        <div class="alert_before_run">
                        </div>
                        <div class="inp1">
                            <button class="button-14" role="button" >
                                <div class="button-14-top text font_for_media">Change ID</div>
                                <div class="button-14-bottom"></div>
                                <div class="button-14-base"></div>
                            </button>
                        </div>
                    </form>
                </div>

            </div>

        </div>   
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script
            src="https://code.jquery.com/jquery-3.7.1.min.js"
            integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
        crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                $(".setUserId").hide();
                $("#changeUserId").on('click', function (f) {
                    $(".setUserId").show();
                   
                });
                $("#getUserId").on('click', function (f1) {
                    $(".setUserId").hide();
                    $.ajax({
                        url: "sendEmailForUserId",
                        type: 'POST',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            if(data.trim()==="success"){
                                swal("Check Your Email For User Name")
                                        .then((val)=>{
                                            window.location='login.jsp';
                                });
                            }
                            else{
                                swal(data);
                            }
                            
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            console.log("error");
                        }
                    });

                });
                
                $("#form_to_set_id").on('submit',function(fn){
                   let flag =0;               
                   fn.preventDefault();                  
                    let first_id = $("#first_id").val();
                    let second_id = $("#second_id").val();
                    if (first_id === second_id) {
                        flag = 1;
                         $(".alert_before_run").html(" ");
                           $("#second_id").css("outline","none");
                    } else {
                        $(".alert_before_run").html("Confirm User Id Not Maching");
                        $("#second_id").css("outline","2px solid red");
                        flag=0;
                    }
                    let data_to_set =$(this).serialize();
                    
                    if(flag==1){
                        $.ajax({
                            url: "ChangeUserIdToNew",
                            type: 'POST',
                            data: data_to_set,
                            success: function (data, textStatus, jqXHR) {
                        
                        if(data.trim()==="success"){
                             swal("UserName Changed Successfully..")
                                .then((value) => {
                                  window.location='login.jsp';                           
                                });
                        }
                        else{
                            swal(data);
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log("error");
                    }
                        });
                    }
                });

            });



        </script>
    </body>
</html>
