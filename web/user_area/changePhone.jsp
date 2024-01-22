

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Phone Number</title>
        <style>
            .form1{
                 display: flex;
                flex-direction: column;
                box-shadow: inset -3px 3px 19px black,inset 3px 3px 20px black;
                padding: 20px;
                height: 120px;
                width: 30%;
                align-items: center;
                justify-content: center;
                border-radius: 6px;
                    position: relative;
                     top: 556px;
                    left: 111px;
            }
            #input1{
                 outline: none;
                border: 1px solid black;
                border: none;
                width: 80%;
                padding: 7px ;
                border-radius: 5px;
                box-shadow:  0px 2px 10px black;
                font-size: 18px;
                text-align: center;
                position: relative;
                top: 2px;
                
            }
            #button2{
                  margin-top: 20px;
                background-color: #c3c5c6;
                padding: 8px 43px;
                border-radius: 10px;
                border: none;
                border: 1px solid black;
                transition: 0.3s;
                position: relative;
                top:13px;
            }
            #button2:hover{
                cursor: pointer;
                transform: scale(1,1.1);
                box-shadow: inset -3px 3px 4px black,inset 3px 3px 4px black;
            }
        </style>
    </head>
    <body>
        <%
//        Class.forName("com.mysql.jdbc.Driver");
//      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank","root","root");
        
        %>
        <form action="changePhone"class="form1">
            <input  type="text" value=""placeholder="Enter new number" id="input1" name="mob_no" important>
            <button id="button2">SET</button>
        </form>
    </body>
</html>
