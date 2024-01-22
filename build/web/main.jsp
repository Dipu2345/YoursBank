<%-- 
    Document   : main
    Created on : Dec 31, 2023, 5:30:26 PM
    Author     : DEBASHIS
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
        *{
            margin: 0px;
            padding: 0px;
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
        .social{
            width: 4%;
            height: 250px;
            background-color: #002d5e;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: space-evenly;
            position: sticky;
            left: 0;
            top: 40%;
            border-top-right-radius: 20px;
            border-bottom-right-radius: 20px;
            z-index: 9;
        }
        .social ul{
            height: 100%;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;

        }
        .social ul li{
            list-style: none;
            font-size: 23px;
            color: white;
            transition: 0.3s;
        }
        .social ul li:hover a i{
            color: red;
        }
        .social ul li a i{
            color: white;
            transition: 0.4s;
        }
        section{
            width: 100%;
            height: 900px;
            background-image: url("./image/pexels-worldspectrum-844124.jpg");
            background-repeat: no-repeat;
            background-size: 100%;
            background-position: 0px 130px  ;
            background-attachment: fixed;
            margin-top: -332px;
        }
        .loans{
            width: 100%;
            height: 300px;
            /* background-color: #13a8e1; */
            position: relative;
            z-index: 0.2;
            top: 140px;
            display: flex;
            align-items: center;
            justify-content: center;
           
        }
        .loan_inside{
            width: 85%;
            height: 199px;
            /* background-color: red; */
            display: flex;
            align-items: center;
            justify-content: space-evenly;
            border: 2px solid white;
            backdrop-filter: blur(4px);
            border-radius: 10px;
        }
        .loan_details{
            margin-top: 37px;
            color: white;
            font-size: 20px;
            text-align: center;

        }
        .loan_details button{
            padding: 7px 12px;
            background-color: #13a8e1;
            border: none;
            border-radius: 5px;
            color: white;
        } 
        .loan_details button:hover{
            transform: scale(1,1.1);
        }
        .loan_details button a{
            text-decoration: none;
            color: white;
        }
        .edu{
            margin-top: 16px;
        }
       
        .gold{
            margin-top: 20px;
        }

        .profile{
            width: 4%;
            height: 49px;
            background-color: red;
            position: absolute;
             z-index: 106;
             top: 13px;
            left: 22px;
            border-radius: 100px;
            overflow: hidden;
        }
        .user_name{
        position: absolute;
        left: 86px;
        top: 21px;
        color: white;
        }
        .profile:hover{
            cursor: pointer;
        }
        #reg{
            padding: 5px 10px;
            background: #fdc300;
            color:black;
            transition: 0.4s
                
        }
        #reg:hover{
            cursor: pointer;
/*            color:#13a8e1;*/
            box-shadow: 1px 3px 10px black;
        }
    </style>
</head>
<body> 
    <div class="main">
        <header>
            <nav>
                <div class="first_img">
                  <div class="first_logo">
                    <div class="search">
                        <%
                        String name = (String)session.getAttribute("name");
                        
                        if(name!=null){
                        %>
                       <div class="profile">
                            <sql:setDataSource driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/bank" var="database" user="root" password="root" />
                             <sql:query dataSource="${database}" var='image_data'>
                                    select * from users where user_name=?;
                                    <sql:param value="<%=name%>"/>
                                </sql:query>       
                         <c:forEach items="${image_data.rows}" var="tt">
                        <a href="profile.jsp"><img src="./image/${tt.image}" alt="Profile" width="100%" height="100%"></a>
                            </c:forEach>
                                    </div>
                       <div class="user_name">
                        <p>Welcome</p>
                        <p><%= name%></p>
                       </div>
                       <% }
                            else{
                                out.println("<a id='reg' style='margin-left:50px;text-decoration:none;' href='login.jsp'>Login</a>");
                                }%>
                    </div>
                    <div class="logo">
                      <h3>Yours Bank</h3>
                      <p>Your Trustable...</p>
                      <div class="target">
                      <span ><a href="" class="anchor_text">About Us</a>&nbsp;</span>|&nbsp;<span ><a href="" class="anchor_text">Feedback</a></span>
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
                            <li><a href="index.html">REGISTER</a></li>
                            <li><a href="">NRI BANKING</a></li>
                            
                        </ul>
                    </div>

                 </div>
                </div>
            </nav>
        </header>
        <div class="social">
            <ul>
                <li><a href=""><i class="fa-brands fa-x-twitter"></i></a></li>
                <li><a href=""><i class="fa-brands fa-facebook"></i></a></li>
                <li><a href=""><i class="fa-brands fa-instagram"></i></a></li>
                <li><a href=""><i class="fa-brands fa-linkedin"></i></a></li>
            </ul>

        </div>
        <section>
           <div class="loans">
            <div class="loan_inside" >
                <div class="home_loan">
                    <img src="./image/home_loan.png" alt="">
                    <div class="loan_details">
                       <button><a href="">Home Loan</a></button>
                    </div>
                </div>
                <div class="gold_loan">
                    <img src="./image/gold_loan.webp" alt="" style="padding-top: 10px;">
                    <div class="loan_details" >
                        <button class=" gold"><a href="">Gold Loan</a></button>
                     </div>
                </div>
                <div class="car_loan">
                    <img src="./image/car_loan.webp" alt="">
                    <div class="loan_details">
                        <button><a href="">Car Loan</a></button>
                     </div>

                </div>
                <div class="edu_loan">
                    <img src="./image/education_loan.png" alt="">
                    <div class="loan_details edu">
                        <button ><a href="">Education Loan</a></button>
                     </div>

                </div>
            </div>
           </div>

        </section>
        <footer>
        </footer>
    </div>
   
</body>
</html>