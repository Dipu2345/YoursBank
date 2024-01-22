<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
        <style>
            .form{
                position: relative;
                top: 20px;
                width: 44%;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                height: 190px;
                left: 30px;
            }
            #formm1{
                display: flex;
                flex-direction: column;
                box-shadow: inset -3px 3px 19px black,inset 3px 3px 20px black;
                padding: 20px;
                height: 120px;
                width: 142%;
                align-items: center;
                justify-content: center;
                border-radius: 6px;
            }
            
            
            .button{
                margin-top: 20px;
                background-color: #c3c5c6;
                padding: 8px 43px;
                border-radius: 10px;
                border: none;
                border: 1px solid black;
                transition: 0.3s;
                position: relative;
                top:-73px;
            }
            .button:hover{
                cursor: pointer;
                transform: scale(1,1.1);
                box-shadow: inset -3px 3px 4px black,inset 3px 3px 4px black;
                /* background:radial-gradient(#fdc300,#13a8e1); */
            }
            #input{
                /* outline:2px solid green; */
                outline: none;
                border: 1px solid black;
                border: none;
                width:75%;
                padding: 7px ;
                border-radius: 5px;
                box-shadow:  0px 2px 10px black;
                font-size: 18px;
                text-align: center;
                position: relative;
                top: -20px;
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
            span{
                position: relative;
                left: -27px;

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
        </style>
    </head>
    
    <body>
        <% 
//            try{
        HttpSession balance_session = request.getSession();
        int balance_id = (int)balance_session.getAttribute("id");
//            }
        %>
        <sql:setDataSource var="check_balance" user="root" password="root" url="jdbc:mysql://localhost/bank" driver="com.mysql.jdbc.Driver"/>
        <sql:query var="balance" dataSource="${check_balance}">    
            select * from users where user_id = ?;
            <sql:param value="<%=balance_id%>"/>
        </sql:query>
            <c:forEach var="account_check" items="${balance.rows}">
        <c:if test="${account_check.active_account==1}">
             <div class="form">
        <form action="AccountBalanceCheck" class="form">
            <div  id="formm1">
            <input id="input" type="password" name="password"placeholder=" Enter PIN" ><span><i class="fa-solid fa-eye" id="open" onclick="view()"></i><i id="close" class="fa-solid fa-eye-slash" onclick="hide()"></i></span>
            </div>
            <button class="button">Enter</button>
        </form>
        </div>    
        </c:if>
        <c:if test="${account_check.active_account==0}">
            <div class="Account_not_activted">
            <h1>Please active account </h1>
            </div>
<!--            <script>window.open('../profile.jsp',_);</script>-->
        </c:if>
            </c:forEach>
            <%
                
//                catch(Throwable e){
//                out.println("<script>alert('Please Login')</script>")
//                    }
//            
            %>
        <script>
            function view(){
                document.querySelector("input").type="text";
                document.getElementById("open").style.display="none";
                document.getElementById("close").style.display="inline"



            }
            function hide(){
                document.querySelector("input").type="password";
                document.getElementById("open").style.display="inline";
                document.getElementById("close").style.display="none"

            }
        </script>
    </body>
</html>
