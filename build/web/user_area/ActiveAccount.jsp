<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Active Account </title>
        <style>
            *{
/*                display: flex;
                align-items: center;
                justify-content: center;*/
            }
/*            img{
                width: 80%;
                height: 400px;
            }*/
            #set_img{
                width: 50%;
                height: 550px;
            }
            #sec{
                width: 100%;
                height:550px;
                display: flex;
                align-items: center;
                justify-content: center;
                
            }
            .BackBtn{
                text-decoration: none;
                border: 1px solid black;
                    position: absolute;
                 top: 447px;
                 left: 600px;
                 padding: 6px 20px;
                 background-color: #007dfe;
                 color: white;
                 transition: 0.7s;
            }
            .BackBtn:hover{
                border: 1px solid #007dfe;
                box-shadow: 0px 0px 10px black;
            }
            .Active_account{
                width: 32%;
                height:400px;
                background: lightblue;
                display: flex;
                align-items: center;
                justify-content: center;
                border-radius: 4px;
                box-shadow: 0px 1px 20px powderblue;
                
            }
            .Active_form{
                    box-shadow: 0px 1px 20px black;
                     padding: 50px;
                     display: flex;
                     flex-direction: column;
                     align-items: center;
                    justify-content: center;
                    background: #13a8e1;
                    border-radius: 10px;
            }
            .inp_tag{
                margin-bottom: 20px;
                padding: 5px 0px;
                text-align: center;
                outline: none;
                
            }
            #account_no1{
                padding: 5px 0px;
                text-align: center;
                outline: none;
            }
            .btn{
                padding: 5px 20px;
                background: #c5c5c5;
                border: none;
                margin-top: -10px;
                transition: 0.4s;
                border-radius: 4px;
            }
            .btn:hover{
                cursor: pointer;
                background: white;
                box-shadow: 0px 1px 10px black;
                   
            }
            #head_acccount{
             margin: 0px;
              position: relative;
                top: -23px;
             color: white;
                 font-size: 20px;
                font-family: sans-serif;
            }
            .failure{
                position: relative;
                top: 190px;
                width: 70%;
                height: 300px;
            }
            .failure p{
                display: inline-block;
                font-size: 9px;
                font-family: monospace;
                animation: text_clr infinite ease-in-out 2.1s;
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
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <%
            try{
        HttpSession sson = request.getSession();
        int active_id=(int)sson.getAttribute("id");
        String active_name = (String)sson.getAttribute("name");
//        out.println(id);
//        out.println(name);
            
        
        
        %>
      
        <sql:query var="active_sts" dataSource="${db}">
            select * from users where user_id =?;
            <sql:param value="<%=active_id%>"/>
        </sql:query>
        <c:forEach var="account" items="${active_sts.rows}">
            <c:if test="${account.active_account==0}">
            
      
    <center>
        <div class="Active_account">
            <form action="../UserActiveAccount" class="Active_form" onsubmit="return finalvalidate()">
                <h5 id="head_acccount">Active Account</h5>
                <input type="text" name="account" class="inp_tag" id="account_no" readonly>
            <br>
            <input type="number" name="pin" value="" id="account_no1" placeholder="Create Secrate PIN" onkeyup="return check_pin()">
            <p id="input_error" style="color:red;"></p>
            <br>
            <button name="btn" class="btn"type="submit">Active</button>
            
        </form>
        </div>
    </center>
            </c:if>
    <c:if test="${account.active_account==1}">
    <center>
        <div class="failure">
            <p>Account already activated  Plese Go back</p>
            <img src="../image/faliuer.png" alt="Sorry!Some Unexpected Error Occcured" width="100%" height="100%"/>
        </div>
    </center>
    
    
    </c:if>
          </c:forEach>
       <%
           }
       catch(Exception e){
              out.println("<center><h2 style='color:red;'>Session Timeout Please Login</h2></center>");
          %>   
<!--          <section id='sec'>
          <div id="set_img">
          <img src="../image/session_timeout.jpg" alt="alt" width="100%" height="100%"/>
          <a class="BackBtn" href="../login.jsp">Login</a>
          </div>
          </section>-->
<!--       <script>Swal.fire({
                                icon: "error",
                                title: "Oops...",
                                text: "Session Timeout ! Please Login",
                                footer: '<a href="../login.jsp"> Click Here To Login Again</a>'
                              });</script>-->
          
         <% 
             
             
          }
          %>
        
          <script>
          let inp= document.getElementById("account_no");
          let val="";
          for(let i=1;i<=10;i++){
              val+=Math.floor(Math.random()*10);
            
              
              
          }
        
          
          inp.value=val;
          var final_check=false;
          function check_pin(){
              let val =document.getElementById("account_no1").value;
              if(val.length>4){
                  document.getElementById("input_error").innerHTML="**please enter four digit PIN";
                  final_check=true;
              }
              else {
                  document.getElementById("input_error").innerHTML="";
                  final_check=false;
              }
              
          }
          function finalvalidate(){
              console.log(final_check);
              let check=document.getElementById("account_no1").value;
              if(check.length==4){
                  final_check=true;
              }
              else if(check.length>4){
                   final_check=false;
              }
              if(final_check){
                  return true;
              }
              else{
                  return false;
              }
          }
          </script>
       
       <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script> 
    </body>
</html>
