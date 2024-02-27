

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <style>
        *{
            margin: 0px;
            padding: 0px;
        }
        .main_login{
            width: 100%;
            height: 560px;
            background-color: rgb(205, 205, 27);
            display: flex;
            align-items: center;
        }
        .left_login{
            width: 50%;
            height: 500px;
          
          
            border-top-right-radius: 60px;
            border-bottom-right-radius: 60px;
            overflow: hidden;
        }
        .right_login{
            width: 50%;
            height: 500px;
            background: rgb(205, 205, 27);
            display:flex;
            align-items: center;
            justify-content: center;
        }
        form{
            border: 2px solid rgb(255, 255, 255);
            box-shadow: 0px 1px 10px white;
            padding: 33px;
            width: 88%;
            background-color: #e1f2f8;
            border-radius: 10px;
            height: 360px;
        }
        .inpt{
            padding-bottom: 20px;
        
           
            margin-top: 10px;
        }
        /* label i{
            margin-bottom: 10px;
        } */
        .login{
            padding: 71px;
          
             border-top-right-radius: 77px;
             border-bottom-left-radius: 71px;
        }
        input:focus{
            border-color: transparent;
        }
      
        input{
            border: none;
            border-bottom: 2px solid #cdcd1b;
            background: transparent;
            width: 100%;
            padding: 10px 0px;
            text-align: center;
            outline: none;
        }
        input:focus{
            border-bottom: 2px solid #cdcd1b !important;
        }
      
        .hdr{
            width: 93%;
    background: #cdcd1b;
    padding: 9px;
    text-align: center;
    border-radius: 10px;
    margin-top: -3px;
    margin-bottom: 36px;
        }
        .btn{
            display: flex;
            align-items: center;
            justify-content: center;
        }
        button{
            padding: 8px 80px;
            background-color: #cdcd1b;
            border-radius: 10px;
            cursor: pointer;
            border: 1px solid #61610a ;
            transition: 0.3s;
        }
        button:hover{
            transform: scale(1,1.1);
        }
        .dont{
            text-align: center;
            text-decoration: none;
            margin-top: 22px;
        }
        .dont a{
            text-decoration: none;
            color: blue;
            font-weight: bold;
            
        }
        .social_login{
            width: 100%;
            height: 30px;
          
            display: flex;
            justify-content: space-evenly;
        }
        .icns{
            width: 30%;
            height: 30px;
            
            text-align: center;
            
        }
        .icns i{
            margin-top: 8px;
            padding-top: 6px;
            width: 40px;
            background-color: white;
            color: #575707;
            height: 23px;
            border-radius: 9px;
        }
        .icns i:hover{
            cursor: pointer;
        }
    </style>
</head>
<body>
    <div class="main_login">
        <div class="left_login">
            <img src="./image/attack-7647136_1920.png" alt="" width="100%" height="100%">
        </div>
        <div class="right_login">
            <div class="login">
                <form action="Login">
                    <p class="hdr">Yours Bank</p>
                    <div class="inpt">
                        <label for=""><i class="fa-regular fa-user"></i></label>
                        <input type="text" placeholder="Enter User name" name="name">
                    </div>
                    <div class="inpt">
                        <label for=""><i class="fa-solid fa-key"></i></label>
                        <input type="password" placeholder="Enter your Mobile no" name="mob">
                    </div>
                    <div class="inpt btn ">
                      <button>Login</button>
                    </div>
                    <div class="social_login">
                        <div class="icns">
                            <i class="fa-brands fa-google"></i>
                        </div>
                        <div class="icns">
                            <i class="fa-brands fa-facebook"></i>
                        </div>
                        <div class="icns">
                            <i class="fa-brands fa-linkedin"></i>
                        </div>
                    </div>
                    <p class="dont">Don't have account <a href="index.jsp">register</a></p>
                </form>
            </div>

        </div>
    </div>
</body>
</html>
