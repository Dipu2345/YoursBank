<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page session="true" %>
<%@page errorPage="error_page.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

    <style>
        *{
            margin: 0;
            padding: 0;
        }
        header{
            width: 100%;
            height: 200px;
        }
        .first_img{
            height: 119px;
            width: 100%;
            position: fixed;
            background-image: url("./image/header1.png");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: 0px ;
            z-index: 2;
            /* display: flex;
            align-items: center; */



        }
        .first_logo{
            width: 100%;
            height: 70px;
            /* background-color: red; */
            display: flex;
            align-items: center;
            justify-content: space-between;
        }
        .logo{
            color: white;
            text-align: center;
         margin-right: -112px;
            height: 140px;
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
        }
        .logo h3{
            color: white;
            font-size: 40px;
            margin-top: 40px;
        }
        .target{
            margin-top: 10px;
        } 
        .anchor_text{
            color: white;
            text-decoration: none;
        }
        .helpline{
            padding-right: 20px;
            color: white;
            text-align: center;
            font-size: 26px;
            font-family: 'Times New Roman', Times, serif;
        }
        .first_img1{
            position:fixed;
            height: 170px;
            top: 110px;
           width: 100%;
            background-image: url("image/header2.webp");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: 0px ;
            margin-top: -69px;
            z-index: 1;

        }
        .navigation{
            width: 100%;
            height: 40px;
            /* background-color: rebeccapurple; */
            position: absolute;
            top: 90px;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 9;
        }
        .inside_nav{
            width: 60%;
            /* background-color: aqua; */
            height: 40px;
            z-index: 9;
        }
        .inside_nav ul{
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            margin-top: 10px;
            text-decoration: none;
            list-style: none;
        }
       
        .inside_nav ul li a{
            color: black;
            text-decoration: none;
            font-weight: 500;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            transition: 0.2s;
        }
        .inside_nav ul li a:hover{
            color: #13a8e1;
            text-shadow: 1px 1px 4px black;
        }
        .profiles{
            width: 100%;
            height: 1000px;
            background-color: #f1f3f6;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .profile_details{
            width: 90%;
            height: 900px;
            background-color:#f1f3f6;
            display: flex;
            justify-content: space-around;
        }
        .left_side_profile{
            width: 25%;
            height: 800px;
/*            background-color:;*/
            display: flex;
            flex-direction: column;
        }
        .profile_image{
            width: 100%;
            height: 80px;
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            margin-bottom: 14px;
            cursor: pointer;
        }
        .profile_back{
            width:  20%;
            height: 55px;
            background-color: #e1e1e1;
            border-radius: 200px;
            overflow: hidden;
            margin-left: 10px;
        }
        .text{
            margin-left: 10px;
            color: black;
        }
        .account_info{
            width: 100%;
            height: 675px;
            background-color: #fdc300;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            margin-top: 10px;
        }
        .acco{
            background-color: #fdc300;
            height: 700px;
        }
        .account{
            width: 90%;
            height: 560px;
            background-color: rgb(91, 91, 85);

        }
        .account_logo{
            width: 100%;
            height: 51px;
            background-color: #13a8e1;
            display: flex;
            align-items: center;
            justify-content: center;

        }
        .adj_logo{
            margin-left: -10px;
        }
        .account_all{
            width: 100%;
            height: 46px;
            background-color: white;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: 0.4s;
        }
        .account_all:hover{
            background-color: #fdc300;
            cursor: pointer;
        }
        .account_all a{
            text-decoration: none;
        }
        .fa-1x {
            font-size: 24px;
        }
        .account_details_text{
            margin-left: 24px;
        text-transform: uppercase;
        font-weight: bolder;
        color: white;
        }
        img{
            text-align: center;
            text-decoration: none;
            cursor: pointer;
        }
        .right_side{
            width: 70%;
            height: 894px;
            background: white;
        }
        #balance{
            display: none;
        }
        #mobile{
            display: none;
        }
        #addBalance{
            display: none;
        }
        #allDetails{
            display: none;
        }
        #changeImage{
            display: none;
        }
        #setimage{
            display: none;
        }
        #ApplyAtmCard{
            display: none;
        }
        #SetAtmPin{
            display: none;
        }
        .res_logo{
            display: none;
        }
        @media only  screen and (max-width:600px){
            body{
              background: #13a8e1;
              /*width: 107%;*/
            }
/*            .profiles{
                height: 600px;
            }*/
            .left_side_profile {
               width: 103%;
               /*height: 300px;*/
            }
            .profile_details {
                flex-direction: column;
                height: 300px;
            }
            .right_side{
                width: 91%;
                    position: absolute;
                 top: 238px;

            }
            .acco {
                    position: relative;
                     left: -427px;
                     z-index:99;
                     top: -80px;
            }
            .profile_image {
                width: 100%;
                height: 100px;
                position: relative;
                top: -108px;
                background: #e2e2e2;

                display: flex;
                align-content: center;
                justify-content: space-evenly;
                    
            }
            .res_logo{
                display: flex;
                width: 20%;
                justify-content: center;
            }
            .control_nav{
                
            }
            .control_nav1{
                display: none;
            }
            .logo {
                font-size: 12px;
            }
            .logo h3 {
                font-size: 18px;
            }
            .helpline {
                font-size: 13px;
                margin-top: -37px;
            }
            .first_img {
                background-position: 0 0 ;
            }
            
            .first_logo {
                height: 71px;
            }
            .first_img1 {
                height: 137px;
                margin-top: 0;
                top: -15px;
            }
            header{
                position: sticky;
                top: 0;
                z-index: 99;
                background: red;
                height: 118px;
            }
            /*////firsst navigation responsive*/
            .inside_nav {
                width: 100%;
                
            }
            .inside_nav ul li {
                font-size: 10px;
            }
            .profile_back {
                height: 71px;
            }
            
        }
        
    </style>
</head>
<body>
       <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/bank" user="root" password="root" scope="application" var="db"/>
    <header>
        <nav>
            <div class="first_img">
              <div class="first_logo">
                <div class="search">
                   <!-- <div class="profile">
                    <a href=""><img src="./image/car_loan.webp" alt="" width="100%" height="100%"></a>
                   </div>
                   <div class="user_name">
                    <p>Welcome</p>
                    <p>user name</p>
                   </div> -->
                </div>
                <div class="logo">
                  <h3>Yours Bank</h3>
                  <p>Your Trustable...</p>
                  <div class="target">
                  <span ><a href="" class="anchor_text">About Us</a>&nbsp;|</span>&nbsp;<span ><a href="" class="anchor_text">Feedback</a></span>
                </div>
                </div>
                <div class="helpline">
                    <div>
                     <h4>1800 1030</h4> 
                    <h6> Contact Us</h6>
                    </div>
                </div>
              </div>
            </div>
            <div class="first_img1">
             <div class="navigation">
                <div class="inside_nav">    
                    <ul>
                        <li><a href="">DEPOSITS</a></li>
                        <li><a href="">LOANS</a></li>
                        <li><a href="">INVESTMENT</a></li>
                        <li><a href="">DIGITAL PRODUCTS</a></li>
                        <li><a href="">INVESTOR RELATION</a></li>
                        <li><a href="">NRI BANKING</a></li>
                        
                    </ul>
                </div>

             </div>
            </div>
        </nav>
    </header>
    <div class="profiles">
    <div class="profile_details">
        <div class="left_side_profile">
            <div class="profile_image">
                <%
                    try{
                HttpSession ss = request.getSession();
                String user_name  = (String)ss.getAttribute("name");
//                out.println(user_name);
                Integer se_id = (Integer)ss.getAttribute("id");
//                i  mu_id = (int)ss.getAttribute("id");
//                out.println(mu_id);
               
                    
                
                %>
                 <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/bank" var="database" user="root" password="root" />
                <sql:query dataSource="${database}" var='image_data'>
                    select * from users where user_name=?;
                    <sql:param value="<%=user_name%>"/>
                </sql:query>               
                    <div class="profile_back" onclick="CImage()">
<!--                <a href="./user_area/ChangeImage.jsp">-->
                    <c:forEach var="table" items="${image_data.rows}">                       
                        <img src="./image/${table.image}" alt="Set Image" width="100%" height="100%">
                    </c:forEach>
<!--                </a>-->
                </div>
                    <div class="text" style="text-align:center;">
                     
                     <% String name = (String)session.getAttribute("name"); %>
                     <h5 style="margin: 0px;text-transform: capitalize;">
                         <%
                         if(se_id!=null){
                         %>
                         <p style="font-size: 12px;">Welcome</p>
                         <p><%=name%></p>
                         <%}else{%>
                         <p style="color:red;">You are Logged out!
                             <br>Please Login</p>
                         <%}%>
                     </h5>
                 </div>
                     <div class="res_logo">
                         <span class="control_nav" onclick="getLeftNav()"><i class="fa fa-bars fa-2x"></i></span>
                           <span class="control_nav1" onclick="hideLeftNav()"><i class="fa fa-close fa-2x"></i></span>
                     </div>

            </div>
            <div class="acco">
                <div class="account_info">
                    <div class="account">
                        <div class="account_logo">
                            <div class="adj_logo" >
                                <i class="fa-solid fa-user fa-1x"></i>
                            </div>
                            <div class="account_details_text">
                                <p>Account Details</p>
                            </div>
                        </div>
                        <hr>
                        <div class="account_all" onclick="accounntBalance()">
                            <a >Account Balance</a>
                        </div><hr>
                        <div class="account_all" onclick="alldetails()"><p>Account Details</p></div><hr>
                        <div class="account_all" onclick="AddBalance()"><p >Add Balance</p></div><hr>
                    </div> 
                    <div class="account">
                        <div class="account_logo">
                            <div class="adj_logo" >
                                <i class="fa-solid fa-building-columns"></i>
                            </div>
                            <div class="account_details_text">
                                <p>payments</p>
                            </div>
                        
                        </div>
                        <hr>
                        <a style="text-decoration: none" href="./user_area/ActiveAccount.jsp"> <div class="account_all"><p>Active Account</p></div></a><hr>
                    <div class="account_all"><a href=""><i class="fa-solid fa-coins"></i>&nbsp;&nbsp;RBI Coin</a></div><hr>
                    <div class="account_all"  onclick="setAtmPin()" ><p><i class="fa-solid fa-globe"></i>&nbsp;&nbsp;SET/CHANGE ATM PIN</p></div><hr>
                    <div class="account_all" onclick="ApplayAtmCard()"><a href=""><i class="fa-regular fa-credit-card"></i>&nbsp;&nbsp;CARDS</a></div><hr>
                    </div>
                    <div class="account">
                        <div class="account_logo">
                            <div class="adj_logo" >
                                <i class="fa-regular fa-clipboard"></i>
                            </div>
                            <div class="account_details_text">
                                <p>USERS</p>
                            </div>
                        
                        </div>
                        <hr>
                    <div class="account_all"><a href="./user_area/changeSecretPin.jsp"><i class="fa-solid fa-key"></i>&nbsp;&nbsp; Change Password </a></div><hr>
                    <div class="account_all"><a href=""><i class="fa-solid fa-location-dot"></i>&nbsp;&nbsp;Change Address</a></div><hr>
                    <div class="account_all" onclick="changePhoneNumber()"><p> <i class="fa-solid fa-phone" ></i>&nbsp;&nbsp;Change Phone</p></div><hr>
                    
                    <div class="account_all">  
                        <% if(se_id!=null){%>
                        
                        <a href="user_area/logout.jsp"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;logout</a>
                     <%}else{%>
                       <a href="login.jsp"><i class="fa-solid fa-power-off"></i>&nbsp;&nbsp;login</a>
                    <%}%>
                    </div><hr>
                    </div>

                </div>
                <div class="logout">
                   
                </div>
            </div>

        </div>
        <div  class="right_side">
            <div class="balance_check" id="balance">
            <%@include file='user_area/checkAccountBalance.jsp' %>
            </div>
            <div class="balance_check" id="mobile">
            <%@include file='user_area/changePhone.jsp' %>
            </div>
            <div id="addBalance">
            <%@include file='user_area/AddBalance.jsp' %>
            </div>
            <div id="allDetails">
                <%@include file="user_area/AllDetails.jsp" %>
            </div>
             <div id="changeImage">
                <%@include file="user_area/ChangeImage.jsp" %>
            </div>
            <div id="ApplyAtmCard">
                <%@include file="user_area/ApplyForCard.jsp" %>
            </div>
             <div id="SetAtmPin">
                <%@include file="user_area/setAtmPin.jsp" %>
            </div>
<!--            <div id="setimage">
                
            </div>-->
        </div>

    </div>
</div>
            <%
                }
            catch(Throwable r){
           System.out.println(r);
            out.println(r);
            r.printStackTrace();
            out.println("<script>alert('Session Timeout Please LOgin');</script>");

                        }
            
            %>
            <script>
                function accounntBalance(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                    let allDetails = document.getElementById("allDetails")
                    allDetails.style.display="none";
                    let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let number =document.getElementById("mobile");
                    number.style.display="none";
                     let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                     let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                   let account =document.getElementById("balance");
                   account.style.display="block";
                   console.log(account);
                } 
                function changePhoneNumber(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                    let allDetails = document.getElementById("allDetails")
                    allDetails.style.display="none";
                    let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let account =document.getElementById("balance");
                   account.style.display="none";
                    let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                     let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                    let number =document.getElementById("mobile");
                    number.style.display="block";
                   
                    console.log(number);
                }
                function AddBalance(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                    let allDetails = document.getElementById("allDetails")
                    allDetails.style.display="none";
                     let account =document.getElementById("balance");
                   account.style.display="none";
                      let number =document.getElementById("mobile");
                    number.style.display="none";
                     let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                     let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                    let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="block";
                }
                function alldetails(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                     let account =document.getElementById("balance");
                   account.style.display="none";
                    let number =document.getElementById("mobile");
                    number.style.display="none";
                     let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                     let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                    let allDetails = document.getElementById("allDetails");
                    allDetails.style.display="block";
                }
                function CImage(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                     let account =document.getElementById("balance");
                   account.style.display="none";
                     let number =document.getElementById("mobile");
                    number.style.display="none";
                     let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let allDetails = document.getElementById("allDetails");
                    allDetails.style.display="none";
                  let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                    let image =document.getElementById("changeImage");
                    image.style.display="block";    
                }
                function  ApplayAtmCard(){
                     let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="none";
                     let account =document.getElementById("balance");
                   account.style.display="none";
                     let number =document.getElementById("mobile");
                    number.style.display="none";
                     let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let allDetails = document.getElementById("allDetails");
                    allDetails.style.display="none";
                     let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                    let val = document.getElementById("ApplyAtmCard");
                    val.style.display="block";
                }
                function setAtmPin(){
                     let account =document.getElementById("balance");
                   account.style.display="none";
                     let number =document.getElementById("mobile");
                    number.style.display="none";
                     let addBalance = document.getElementById("addBalance");
                    addBalance.style.display="none";
                     let allDetails = document.getElementById("allDetails");
                    allDetails.style.display="none";
                     let image =document.getElementById("changeImage");
                    image.style.display="none"; 
                    let val = document.getElementById("ApplyAtmCard");
                    val.style.display="none";
                    let dat = document.getElementById("SetAtmPin"); 
                    dat.style.display="block";
                }
//                function ActiveAccount(){
//                     let allDetails = document.getElementById("allDetails")
//                    allDetails.style.display="none";
//                     let account =document.getElementById("balance");
//                   account.style.display="none";
//                    let number =document.getElementById("mobile");
//                    number.style.display="none";
//                     let addBalance = document.getElementById("addBalance");
//                    addBalance.style.display="none";
//                    console.log("hhdhhd");
//                    let image =document.getElementById("changeImage");
//                    image.style.display="none"; 
//                    let id = document.getElementById("setimage");
//                    id.style.display="block";
//                }
            </script>       
            
            <script>
              function   getLeftNav(){
                 let tr = document.getElementsByClassName("acco");
                 tr[0].style.transition="2s";
                 tr[0].style.left="0px";
                 let do1 = document.getElementsByClassName("control_nav");
                 do1[0].style.display="none";
                 let do2 = document.getElementsByClassName("control_nav1");
                 do2[0].style.display="block";
                 
              }
              
             function hideLeftNav(){
                  let tr = document.getElementsByClassName("acco");
                 tr[0].style.transition="2s";
                 tr[0].style.left="-420px";
                  let do1 = document.getElementsByClassName("control_nav");
                 do1[0].style.display="block";
                 let do2 = document.getElementsByClassName("control_nav1");
                 do2[0].style.display="none";
             }
             
             let full_terget = document.getElementsByClassName("account_all");
             console.log(full_terget);
             let ele =Array.from(full_terget);
             ele.forEach((btn)=>{
                btn.addEventListener('click',(val)=>{
                  let tr = document.getElementsByClassName("acco");
                 tr[0].style.transition="1s";
                 tr[0].style.left="-420px";
                  let do1 = document.getElementsByClassName("control_nav");
                 do1[0].style.display="block";
                 let do2 = document.getElementsByClassName("control_nav1");
                 do2[0].style.display="none";
                    
                });
             });
          
             
            </script>
</body>
</html>