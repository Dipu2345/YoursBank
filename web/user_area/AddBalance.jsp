<%@page import="com.bank.user.UserDetails" %>
<%@page import="com.bank.helper.ActivityDao" %>
<%@page import="com.bank.Connector.DbConnect" %>
<%@page session='true' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
          .form{
                position: relative;
                top: 20px;
                width: 50%;
                display: flex;
                border-left: 2px solid blue;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                height: 250px;
                left: 30px;
                background: #e5e5e5;
                /*box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;*/
                box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;
            }
            /*            #formm1{
                            display: flex;
                            flex-direction: column;
                            box-shadow: inset -3px 3px 19px black,inset 3px 3px 20px black;
                            padding: 20px;
                            height: 120px;
                            width: 50%;
                            align-items: center;
                            justify-content: center;
                            border-radius: 6px;
                            background: blue;
                        }*/
            .form_for_balance{
                background: #e5e5e5;
                width: 100%;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                gap: 30px;
                box-shadow: rgba(0, 0, 0, 0.17) 0px -23px 25px 0px inset, rgba(0, 0, 0, 0.15) 0px -36px 30px 0px inset, rgba(0, 0, 0, 0.1) 0px -79px 40px 0px inset, rgba(0, 0, 0, 0.06) 0px 2px 1px, rgba(0, 0, 0, 0.09) 0px 4px 2px, rgba(0, 0, 0, 0.09) 0px 8px 4px, rgba(0, 0, 0, 0.09) 0px 16px 8px, rgba(0, 0, 0, 0.09) 0px 32px 16px;

            }

            .form_data_balance{

            }
            .button{
                margin-top: 20px;
                background-color: #c3c5c6;
                padding: 8px 43px;
                border-radius: 10px;
                border: none;
                border: 1px solid black;
                transition: 0.3s;
                /*                position: relative;
                                top:-73px;*/
            }
            .button:hover{
                cursor: pointer;
                transform: scale(1,1.1);
                box-shadow: inset -3px 3px 4px black,inset 3px 3px 4px black;
                /* background:radial-gradient(#fdc300,#13a8e1); */
            }
            .input{
                /* outline:2px solid green; */
                outline: none;
                border: 1px solid black;
                border: none;
                width:75%;
                padding: 10px 10px;
                border-radius: 5px;
                box-shadow:  0px 2px 4px black,inset 0 0 4px black;
                font-size: 18px;
                text-align: center;
                border-bottom: 3px solid blue;
                background: transparent;
                margin-left: 16px;
            }
            .fa-eye{
                display: inline;
                position: absolute;
                left: 100px;
                top: -44px;
                cursor: pointer;

            }
            .fa-eye-slash{
                display: none;
                position: absolute;
                left: 100px;
                top: -44px;
                cursor: pointer;

            }
            .span_eyedata{
                position: relative;

                left: -128px;
                top: 46px;

            }
            .Account_not_activted{
                width: 50%;
                text-align: center;
                position: relative;
                top: 100px;
                left: 200px;
            }
            .Account_not_activted h1{
                color: red;
                font-family: monospace;
                font-size: 14px;
                animation: text_clr infinite ease-in-out 2.5s;
                position: relative;
                top: 100px;
            }
            @keyframes text_clr{
                0%{
                    color:black;
                }
                25%{
                    color:red;
                    transform: scale(1.5);
                }
                50%{
                    color:black;
                    transform:scale(1,1);
                }
                75%{
                    color:red;
                    transform: scale(1.5);
                }

                100%{
                    color:black;
                    transform:scale(1,1);
                }
            }
            .form_logo img{
                width: 70px;
                height: 70px;
                filter:invert(1 );
            }
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
     
        /*===================================================================================*/
        section{
            width: 40%;
            height: 257px;
            background-color: #13a8e1;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            top: 20px;
            left: 30px;
            box-shadow: 0px 2px 20px #000000;
        }
        #fform{
            width: 231px;
            height: 188px;
            background-color: #f2b20b;
            border-radius:6px; 
            padding: 0px 5px;display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        .p_input{
            margin-bottom: 20px;
            outline: none;  
            width: 171px;
           height:30px;
           text-align: center;
           border: none;
           border-radius: 6px;
        }
        .p_input::placeholder{
            text-align: center;
        }
        #aab{
            padding: 6px 60px;
            background-color: #13a8e1;
            border: none;
            transition: 0.3s;
            border-radius: 4px;
/*            margin-top: -17px;*/

        }
        #aab:hover {
            transform: scale(1.1);
            cursor: pointer;
            /* border: 1px solid black; */
            color: white;
           
        
        }
        #eyes{
            position: relative;
            top: 3px;
            left: -39px;
        }
        .fa-eye-slash{
            display: none;
        }
         .Account_not_activted{
                width: 50%;
                text-align: center;
                position: relative;
                top: 100px;
                left: 200px;
            }
            .Account_not_activted h1{
                color: red;
                font-family: monospace;
                font-size: 14px;
                animation: text_clr infinite ease-in-out 2.5s;
                position: relative;
                top: 100px;
            }
            @keyframes text_clr{
                0%{
                    color:black;
                }
                25%{
                    color:red;
                    transform: scale(1.5);
                }
                50%{
                    color:black;
                    transform:scale(1,1);
                }
                75%{
                    color:red;
                    transform: scale(1.5);
                }

                100%{
                    color:black;
                    transform:scale(1,1);
                }
            }
            #form_sec{
                height: 350px;
            }
       

    </style>
</head>
<body>
<%
    try{
UserDetails us  =(UserDetails) session.getAttribute("currentUser");
if(us==null){
response.sendRedirect("../login.jsp");
    }

ActivityDao ad1 = new ActivityDao(DbConnect.getConnect());
    boolean b11 = ad1.checkAccountActivated(us.getUser_id());
    if(b11){
  
%>
     <div class="form" id="form_sec">
                    <form action="AddBalance" class="form_for_balance">
                        <div class="form_logo"><img src="./image/checkbalance.png" width="100%" height="100%" alt="alt"/></div>
                       <div class="form_data_balance">
                            <input class="input" type="number" name="amount" placeholder=" Enter Amount" >
                        </div>
                        <div class="form_data_balance">
                            <input class="input" id="in" type="password" name="pin" placeholder=" Enter PIN" ><span  class="span_eyedata" ><i class="fa-solid fa-eye" id="open_eye" onclick="openeye()"></i><i id="close_eye" class="fa-solid fa-eye-slash" onclick="close_eye()" ></i></span>
                        </div>
                        <div class="form_data_balance">
                            <button class="button-29" role="button">ADD</button>
                        </div>
                    </form>
                </div>    
    
    
    
 <%
      
    }
    else{
%>
    <div class="Account_not_activted">
                    <h1>Please active account </h1>
    </div>
   <%  }
     }catch(Throwable e){
out.println(e);
}
 
 %>
    <script>
      
    
      function openeye(){
        
            let inp = document.getElementById("in");
          let open_eye = document.getElementById("open_eye"); 
          let close_eye = document.getElementById("close_eye");
          open_eye.style.display="none";
          close_eye.style.display="block";
          inp.type="text";
          
      }
      function  close_eye(){
          
            let inp = document.getElementById("in");
          let open_eye = document.getElementById("open_eye"); 
          let close_eye = document.getElementById("close_eye");
          open_eye.style.display="block";
          close_eye.style.display="none";
          inp.type="password";
      }
       
    </script>
</body>
</html>