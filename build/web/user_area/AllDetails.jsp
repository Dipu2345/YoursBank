<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Details </title>
        <style>
           
            .main{
                
                width: 100%;
                height: 400px;
                background-color: #f8f8f8;
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                 top: 69px;
                  font-family: monospace;
            }
           
            .left{
                width: 30%;
                height: 350px;
                background: #ffffff;
                display: flex;
                flex-direction: column;
                align-items: center;
                 font-family: monospace;
            }
            .left div{
               margin-top: 30px;
                font-family: monospace;
            }
            .inside_left{
                width: 144px;
                height: 138px;
                background: #e4e4e4;
                border-radius: 136px;
               
               
                display: flex;
                align-items: center;
                justify-content: center;
                 font-family: monospace;
            }
            .inside_left div{
                margin-top: 16px;
                 font-family: monospace;
            }
            hr{
                color: black;
                width: 100%;
                
            }
            .right{
                width: 70%;
                height: 350px;
                background: #ffffff;
                display: flex;
                align-items: center;
                flex-direction: column;
                justify-content: center;
                 font-family: monospace;
                
            }
            .inside1_rigth{
                width: 100%;
                height: 50%;
                background: #e5e5e5;
                     display: flex;
                align-items: center;
                justify-content: center;
                 font-family: monospace;
            }
            .inside2_rigth{
                width: 100%;
                height: 50%;
                background: #e5e5e5;
                display: flex;
                 align-items: center;
                justify-content: center;
                 font-family: monospace;
            }
            .in1_right{
                width: 87%;
                height: 90%;
              font-family: monospace;  
               
                    
            }
            .in1_right_div{
                width: 44%;
                height: 90px;
                background-color: #e5e5e5;
                margin-left: 10px;
                text-align: center;
                 font-family: monospace;
            }
            .inn1_felx{
                display: flex;
                justify-content: space-around;
                 position: relative;
                 top: 26px;
                  font-family: monospace;
            }
            .arrow{
                width: 1px;
                background: black;
                height: 350px;
                 font-family: monospace;
            }
            .user{
                margin-bottom: 14px;
                 font-family: monospace;
            }
            .accout_details{
                width: 180px;
                text-align: center;
                 font-family: monospace;
            }
            .dtls{
                text-transform: capitalize;
                 font-family: monospace;
            }
            .highlight{
                font-size: 20px;
                font-family: monospace;
            }
            .img{
                border-radius: 130px; 
            }
            .AccountNotActivated{
                color:red;
                text-align: center;
                font-family: monospace;
                animation: text_clr infinite ease-in-out 2.5s;
                font-size: 6px !important; 

                
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
            .AccountNotActivated h2{
                margin-bottom: 15px;
            }
            @media only  screen and (max-width:600px){
                .main{
                    flex-direction: column;
                }
                .left {
                    width: 96%;
                    height: 100px;
                }
                .inside_left {
                    width: 53px;
                }
                
                .left div {
                    margin: 0;
                }
                .right {
                    width: 100%;
                       position: relative;
    top: -23px;
                }
                
                .inn1_felx {
                    height: 110px;
                }
                .in1_right_div{
                    height: 58px;
                    /*overflow: hidden;*/
                }
                .arrow {
                    display: none;
                }
            }
        </style>
    </head>
    <body> 
        <%
            int session_id=0;
            try{
        HttpSession sson = request.getSession();
        
         session_id=(int)sson.getAttribute("id");
        
        }
            catch(Exception e){
            out.println("<h3>Sorry some internal error occured</h3>");

            System.out.println(e);
            }
           
        %>
        <c:set var="value" value="<%=session_id%>" scope="application"/>
        <c:set var="user_id" value="${value}" scope="application"/>
        <c:set var="id" value="20"/>      
     
        <sql:query dataSource="${db}" var="res">
            select * from users where user_id=?;
            <sql:param value="${user_id}"/>
        </sql:query>
        <sql:query dataSource="${db}" var="rese">
            select * from account_details where user_id=?;
            <sql:param value="${user_id}"/>
        </sql:query>    
            <div class="main">
                 <c:forEach  var="table" items="${res.rows}">
                <div class="left">
                    <div class="inside_left">
                        <c:set var="image" value="${table.image}"/>
                        <img class="img" src="./image/${table.image}" alt="alt" width="100%" height="100%"/>
                    </div>
                    <div class="user">
                        <h4 class='dtls highlight'><c:out value="${table.user_name}" /></h4>
                    </div>
                    <hr>
                    <div class="accout_details">
                        <h3>Father's Name</h3>
                        <br>
                        <p><c:out value="${table.user_fname}" /></p>
                    </div>                  
                </div>
                <div class="arrow"></div>
                <div class="right">
                    <div class="inside1_rigth">
                        <div class='in1_right'>
                            <p class="highlight"> Personal Details</p>
                            <div class="inn1_felx">
                            <div class="in1_right_div">
                                <p>Email</p>
                                <br>
                                <p><c:out value="${table.email}" /></p>
                            </div>
                            <div class="in1_right_div">
                                <p>PAN</p>
                                <br>
                                <p ><c:out value="${table.pan}" /></p>
                            </div>
                              <c:set value="${table.active_account}" var="active" scope="application" />
                            <div class="in1_right_div">
                                <p>Addhar</p>
                                <br>
                                <p><c:out value="${table.addhar}" /></p>
                                <%  
                                String check_active = "hdd";                               
                                
                                %>
                            </div>                             
                            </div>
                        </div>                       
                    </div>
                    <hr>                    
                    <div class="inside2_rigth">
                        <c:if test="${table.active_account==0}">
                        <div class="AccountNotActivated">
                            <h2>Account Not Activated!</h2>
                            <h3> Please go to Payment section and Active Your Account</h3>
                        </div>
                        </c:if>
                         <c:forEach  var="table1" items="${rese.rows}">   
                        <div class='in1_right'>
                            
                            <p class="highlight">Banking  Details</p>
                            <div class="inn1_felx">
                            <div class="in1_right_div">
                                <p>Account Number</p>
                                <br>                             
                                <p>
                                    <c:set var="account_number" value="${table1.account_number}" />
                                    <c:out value="${account_number}"/>
                                
                                </p>
                            </div>                            
                            <div class="in1_right_div">
                                <p>UPI PIN</p>
                                <br>
                                 <p><c:out value="${table1.upi_pin}"/></p>
                            </div>
                            <div class="in1_right_div">
                                <p>Account Balance</p>
                                <br>
                                <p><c:out value="${table1.account_balance}"/></p>
                            </div>
                            </div>
                        </div>
                            </c:forEach>                         
                    </div>                  
                </div>               
               </c:forEach>   
            </div>
    </body>
</html>
