<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Yours Bank</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <style>
            #preloader{
                    background: #0000008a url(image/preloader3.gif);
                    background-repeat: no-repeat;
                    background-position: center;
                    background-size: 6%;
                    height: 100vh;
                    width: 100%;
                    z-index: 100;
                    position: fixed;
            }
            
            
        </style>
    </head>
    <body> 
        <div id="preloader"></div>
        <div class="main">
            <div class="visme_d" data-title="Untitled Project" data-url="eprmy79m-untitled-project?fullPage=true" data-domain="forms" data-full-page="true" data-min-height="100vh" data-form-id="18021"></div>
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
                    <div class="inside_logo">
                        
                    </div>
                </div>
                <div style="height: 100px">
                </div>
                <div class="account_broucher">
                    <div class="account_inside">
                        <div class="first_row_account">
                            <div class="prod1">
                                <img class="account_image" src="./image/account1.png" alt="alt"/><br>
                                <b>Easy Online Payment</b><br>
                                <!--<p>You can get faster payment</p>-->
                            </div>
                            <div class="prod1">
                                <img class="account_image" src="./image/account2.png" alt="alt"/><br>
                                <b>Lifetime free Credit card </b><br>
                                <!--<p>Lifetime free credit card without any charge</p>-->
                            </div>
                            <div  class="prod1">
                                <img class="account_image" src="./image/account3.png" alt="alt"/><br>
                                <b>More Returns on Saving</b><br>
                                <!--<p>8% returns on your saving</p>-->
                            </div>
                        </div>
                        <div class="second_row_account">
                            <div class="prod1">
                                <img class="account_image" src="./image/account4.png" alt="alt"/><br>
                                <b>10% returns on FD</b><br>
                                <!--<p>Lifetime free credit card without any charge</p>-->
                            </div>
                            <div class="prod1">
                                <img class="account_image" src="./image/account5.png" alt="alt"/><br>
                                <b>Mobile Banking </b><br>
                                <!--                            <p>We Provide Mobile Banking</p>-->
                            </div>
                            <div class="prod1">
                                <img class="account_image" src="./image/help.gif" alt="alt"/><br>
                                <b>24*7 Customer Support </b><br>
                                <!--                            <p>We provide 24*7 Customer Support</p>-->
                            </div>
                        </div>
                        <div class="open_acc_btn">
                            <!--                        <div>-->
                            <p class="open_accout_message">Open Account To Access Benefit</p>
                            <!--</div>-->
                            <a class="open_account_button" href="index.html">Open Account</a>
                        </div>

                    </div>
                </div>

            </section>
            <div class="offer">
                <div style="margin-top: 35px;padding: 30px 0px">
                    <h2>Offers and Announcement</h2>
                </div>
                <div class="inside_offer">

                    <div class="offer1">
                        <div class="offer_left"></div>
                        <div class="offer_right">
                            <div class="marks">
                                <h3><i class="fa-solid fa-bell"></i>&nbsp;&nbsp;updates And Announcement</h3>
                            </div>
                            <marquee direction="up"  height="80%">

                                <div class="mark1">
                                    <br>
                                    <p>Update teksdnjbjhc cvhdsvj dvdhuv</p>
                                    <br>
                                    <br>
                                    <hr class="hr_tag">
                                    <br>
                                    <p>Update teksdnjbjhc cvhdsvj dvdhuv</p>
                                    <br>
                                    <br>
                                    <hr class="hr_tag">
                                    <br>
                                    <p>Update teksdnjbjhc cvhdsvj dvdhuv</p>
                                    <br>
                                    <a href="#" class="marq_anc">Know More</a>
                                    <br>
                                    <br>

                                    <hr class="hr_tag">
                                </div>
                            </marquee>
                        </div>
                    </div>

                    <div class="offer2">
                        <div style="height: 400px;"></div>
                        <div id="inside_offer2">
                            <div class="cont1">
                                <div class="inside_cont1">
                                    <img src="./image/customer-icon.svg" alt="alt"/>
                                </div>
                                <div class="inside_cont2">
                                    <p class="num">16,639,163</p>
                                    <p class="down_nm">Happy Customer</p>
                                </div>
                            </div>
                            <div class="cont1">
                                <div class="inside_cont1">
                                    <img width="100px" height="100px" src="./image/atms.svg" alt="alt"/>
                                </div>
                                <div class="inside_cont2">
                                    <p class="num">1442</p>
                                    <p class="down_nm">Banking Outlet</p>
                                </div>
                            </div>
                            <div class="cont1">
                                <div class="inside_cont1">
                                    <img width="100px" height="100px" src="./image/cash-recyclers.svg" alt="alt"/>
                                </div>
                                <div class="inside_cont2">
                                    <p class="num">1393</p>
                                    <p class="down_nm">ATMs</p>
                                </div>
                            </div>
                            <div class="cont1">
                                <div class="inside_cont1">
                                    <img width="100px" height="100px" src="./image/banking-ouotlets.svg" alt="alt"/>
                                </div>
                                <div class="inside_cont2">
                                    <p class="num">578</p>
                                    <p class="down_nm">Cash Recyclers</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="quicklink">
                        <div class="inside_quick_link">
                            <div class="links left_link">
                                <div class="quicklink_image">
                                    <img width="50px" height="50px" src="./image/bankingtool.svg" alt="alt"/>
                                </div>
                                <div class="quicklink_text">
                                    <a class="quicklink_link" href="#">Banking Tool</a>
                                </div>
                            </div>
                            <div class="links">
                                <div class="quicklink_image">
                                    <img  width="50px" height="50px" src="./image/ratecharge.svg" alt="alt"/>
                                </div>
                                <div class="quicklink_text">
                                    <a class="quicklink_link" href="#">Rates and Charges</a>
                                </div>
                            </div>
                            <div class="links">
                                <div class="quicklink_image">
                                    <img width="50px" height="50px" src="./image/needasistance.svg" alt="alt"/>
                                </div>
                                <div class="quicklink_text">
                                    <a class="quicklink_link" href="#">Need Assistance</a>
                                </div>
                            </div>
                            <div class="links right_link">
                                <div class="quicklink_image">
                                    <img width="50px" height="50px" src="./image/quicklinks.svg" alt="alt"/>
                                </div>
                                <div class="quicklink_text">
                                    <a class="quicklink_link" href="#">Quick links</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                            
                             <%@include file="footer.jsp" %>
                            <div class="help">
                                <div class="help_text">Hii i am Debashis Your Personal Assistance</div>
                                <div class="help_img"></div>
                            </div>                
            
        </div>
                            <script>
                                let loader = document.getElementById("preloader");
                                window.addEventListener('load',function(){
                                    loader.style.display="none";
                                });
                                
                                
                            </script>
    <!--<script src="https://static-bundles.visme.co/forms/vismeforms-embed.js"></script>-->
    </body>
</html>