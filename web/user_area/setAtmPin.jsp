
<%@page import="com.bank.user.UserDetails" %>
<%@page import="com.bank.Connector.DbConnect" %>
<%@page import="com.bank.helper.ActivityDao" %>
<%@page import="com.bank.user.AtmDetails" %>
<%
//
UserDetails use1 =(UserDetails) session.getAttribute("currentUser");

 if(use1==null){
    response.sendRedirect("../login.jsp");
    }
//    
try{

    ActivityDao atm_dao = new ActivityDao(DbConnect.getConnect());
    AtmDetails dl = atm_dao.getAtmDetails(use1.getUser_id());
  
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <title>set Atm Pin</title>
        <style>
            .set_pin{
                width: 100%;
                height: 400px;
                /*background-color: #c4c4c4;*/
                display: flex;
                align-items: center;
                justify-content: center;
                gap: 30px;

            }
            .set_pin_left{
                width: 40%;
                height: 300px;
                z-index: 3;
                position: relative;
                /*right: -468px;*/
            }
            .pin_lefft_picture{
                width: 100%;
                height: 100%;
            }
            .set_pin_right{
                width: 40%;
                height: 300px;
                background-color: turquoise;
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                top:220px;
                /*                left: -536px;*/
                /*z-index: 1;*/
                display: none;
            }
            .set_pin_right_inside{
                width: 80%;
                height: 250px;
                background-color: #e2e2e2;
            }
            .form_for_set_pin{
/*                padding: 30px 20px;*/
                display: flex;
                width: 47%;
                height: 300px;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 38px;
                background: #e2e2e2;
                box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
            }
            .form_inside{
                display: flex;
                width: 70%;
                flex-direction: column;
                gap: 6px;
            }
            .form_inside input{
                padding: 10px 20px;
                border: none;
                border-bottom: 3px solid #0602f5;
                outline: none;

            }
            .form_inside label{
                font-family: monospace;
            }
            .button_to_setpin{
                padding: 4px 40px;
            }
            .animate{

                animation: valu 4s linear;
                transition: animation 10s;
            }
            .anime{
                animation: opacities 4s linear;
            }


            .main_data{
                width: 99%;
                height: 400px;
                /*background-color: #0099ff;*/
                display: flex;
                align-items: center;
                justify-content: center;
            }
            .full{
                overflow-x: hidden;
            }
            .pin_activated{
                width: 100%;
                height: 400px;
            }
            .image_forpin{
                width: 100%;
                height: 100%;
            }
            .head_data_for_atm{
                width: 100%;
                height: 200px;
                display: flex;
                align-items: center;
                justify-content: space-evenly;
                margin-top: 30px;
            }
            .left_for_atm{
                width: 25%;
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
                width: 25%;
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
        </style>
    </head>
    <body class="full">
        <%
        if(dl==null){
        out.println("please apply for atm first");
            }
            else{
        %>
       

        <div class="head_data_for_atm">
            <div class="left_for_atm">
                <div class="leftfor_image"><img src="./image/amimatedatm.png" width="100%" height="100%" alt="alt"/></div>
                <div class="leftforbtn">
                    <button class="button-14" role="button" onclick="setAtmPinevent()">
                        <div class="button-14-top text">SET ATM PIN</div>
                        <div class="button-14-bottom"></div>
                        <div class="button-14-base"></div>
                    </button>

                </div>
            </div>
            <div class="right_for_atm">
                <div class="leftfor_image"><img src="./image/animatedatmright.png" width="100%" height="100%" alt="alt"/></div>
                <div class="leftforbtn">
                    <button class="button-14" role="button" onclick="changeatmpin()">
                        <div class="button-14-top text">CHANGE PIN</div>
                        <div class="button-14-bottom"></div>
                        <div class="button-14-base"></div>
                    </button>
                </div>
            </div>
        </div>
        <div class="main_page_for_atm">
            <form action="changeOldAtmPin" class="form_for_set_pin form_p1"  id="changepin">
                <div class="form_inside">
                    <label>Enter Card Number</label>
                    <input type="number" name="card_number_changed_pin" placeholder="Enter Card Number"  >
                </div>
                <div class="form_inside">
                    <label>Enter New Pin</label>
                    <input type="number" name="card_pin_changed_pin"  placeholder="Enter four Digit Pin" >
                </div>
                <div class="form_inside_button">
                   
                    <button class="button-29" role="button">Set pin</button>
                </div>
            </form>
            <form action="SetAtmPinServlet" class="form_for_set_pin form_p" id="sub_form"  >
                <div class="form_inside">
                    <label>Enter Card Number</label>
                    <input type="number" name="card_number" placeholder="Enter Card Number"  value="<%=dl.getAtm_no()%>">
                </div>
                <div class="form_inside">
                    <label>Set PIN</label>
                    <input type="number" name="card_pin"  placeholder="Enter 4 digit pin" >
                </div>
                <div class="form_inside_button">
                   
                    <button class="button-29" role="button">Change Pin</button>


                </div>
            </form>
        </div>




        <%} %>
        
        <%
         
            
         
     }catch(Throwable e){
         out.println(e);
     }
        %>




        <script>
            function changeatmpin() {
                let elem1 = document.getElementsByClassName("form_p");
                elem1[0].style.display = "none";
                let elem = document.getElementsByClassName("form_p1");
                elem[0].style.display = "flex";

            }
            function setAtmPinevent() {
                let elem1 = document.getElementsByClassName("form_p1");
                elem1[0].style.display = "none";
                let elem = document.getElementsByClassName("form_p");
                elem[0].style.display = "flex";


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
            $(document).ready(function () {
                $("#loader").hide();
                $("#sub_form").on('submit', function (ele_atm) {

                    ele_atm.preventDefault();
                    let f = $(this).serialize();
                    $("#loader").show();
                    $("#atm_submit").hide();

                    $.ajax({
                        url: "SetAtmPinServlet",
                        type: 'POST',
                        data: f,
                        success: function (data, textStatus, jqXHR) {
                            $("#loader").hide();

                            if (data.trim() === "successful") {
                                swal("Pin Set Sucessfully ...")
                                        .then((value) => {
                                            window.location = "profile.jsp";
                                        });
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                            $("#loader").hide();
                            $("#atm_submit").show();
                            swal(data);
                            console.log(data);

                        }


                    });
                });
                $("#changepin").on('submit',function (change_atm){
                    change_atm.preventDefault();
                   let change_data =$(this).serialize();
                    console.log(change_data);
                    $.ajax({
                        url: "changeOldAtmPin",
                        type: 'POST',
                        data: change_data,
                        success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        if(data.trim()==="success"){
                              swal("Pin Updated Successfully ...")
                                        .then((value) => {
                                            window.location = "profile.jsp";
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

            });


        </script>

    </body>

</html>
