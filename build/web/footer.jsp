
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>footer</title>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

        <style>
          footer{
width: 100%;
height: 550px;
background-color: #232f3e;
top: 452px;
    position: relative;

}


.fot{
    width: 100%;
    height:250px;
    /* background-color: #cc0c39; */
    display: flex;
    align-items: center;
    justify-content: center;
    /* flex-wrap: wrap; */
}
.footer_card{
margin-top: 20px;
width: 95%;
height: 85%;
/* background-color: #f6b103; */
display: flex;
justify-content: space-evenly;
flex-wrap: wrap;
}
.fot_1{
    width: 18%;
    height: 100%;
    /* background-color: aqua; */
    /* //display: flex; */
    flex-direction: column;
    flex-wrap: wrap;
  
}
.anccc{
    width: 75%;
    /* background-color: #0ccc4f; */
    display: flex;
    color: white;
    font-weight: bolder;
    font-size: large;
}
.list_link ul{
    list-style: none;
}
.list_link ul li a{
    color: white;
    text-decoration: none;
    font-size: 14px;

}
.list_link ul li a:hover{
    color: red;
}
.down_logo{
    width: 100%;
    height: 70px;
    /* background-color: crimson; */
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}
.footer_logo{
    width: 10%;
    height: 44%;

}
.footer_logo img{
    width: 100%;
    height: 100%;
}
.one_line_list{
    width: 100%;
    height: 50px;
    /* background-color: orange; */
    display: flex;
    align-items: center;
    justify-content: center;
    transition: 0.3s;
    flex-wrap: wrap;
}
.one_line_list:hover{
    box-shadow: 0px 1px 20px red;

}
.imside_one_linelist{
    width: 80%;
    height: 100%;
    /* background-color: black; */
    text-align: center;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
   
}
.imside_one_linelist ul li{
    display: inline-block;
    margin-right: 10px;
}
.imside_one_linelist ul li a{
    text-decoration: none;
    color: white;
    transition: 0.3s;
}
.imside_one_linelist ul li a:hover{
    color: red;
}
.copy_right{
    margin-top: 30px;
    width: 100%;
    height: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    flex-wrap: wrap;
}
.ccopy_1{
    width: 40%;
    height: 20px;
    text-align: center;
}
.ccopy_1 p{
    color: white;
}
.a p{
    color: white;
    font-size: large;
    font-weight: bolder;
}
.copyright{
    color: white;
}

.mrgn{
    margin-bottom: 12px;
}
.list_link ul li{
    margin-bottom: 3px;
}
.clmr{
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    background: linear-gradient(360deg,#8a8a8a,transparent);
}
.dsclmr{
    width: 80%;
    height: 50px;
    text-align: center;
    color: red;
}
.dsclmr p{
    color: red;
    font-size: 20px;
}
        </style>
    </head>
    <body>
        <footer>
    
    <div class="fot">
      <div class="footer_card">
        <div class="fot_1">
          <div  class="mrgn">
            <div class="anccc"><p>Who We are</p></div>
          </div>
          <div class="list_link">
            <ul>
              <li><a href="">About Us</a></li>
              <li><a href="">Careers</a></li>
              <li><a href="">Our Founder</a></li>
              <li><a href="">Online Press Kit</a></li>
            </ul>
          </div>
        </div>
        <div class="fot_1">
          <div  class="mrgn">
            <div class="anccc"><p>Connect With Us</p></div>
          </div>
          <div class="list_link">
            <ul>
              <li><a href="">Facebook</a></li>
              <li><a href="">Twitter</a></li>
              <li><a href="">Instagram</a></li>
            </ul>
          </div>
        </div>
        <div class="fot_1">
            <div  class="mrgn">
            <div class="anccc"><p>Customer Relation</p></div>
          </div>
          <div class="list_link">
            <ul>
              <li><a href="">RBI Advisory Message</a></li>
              <li><a href="">RBI Kehta Hai</a></li>
              <li><a href="">Direct TAX Collection</a></li>
              <li><a href="">Do Not Call Registry</a></li>
              <li><a href="">Customer Learning</a></li>
            </ul>
          </div>
        </div>
        <div class="fot_1">
          <div  class="mrgn">
            <div class="anccc"><p>Useful Links</p></div>
          </div>
          <div class="list_link">
            <ul>
              <li><a href="">Locate Us</a></li>
              <li><a href="">Quick EMI</a></li>
              <li><a href="">Register NACH e-mandate</a></li>
              <li><a href="">Forms & Stationery</a></li>
              <li><a href="">MSME Portal</a></li>
              <li><a href="">Help</a></li>
            </ul>
          </div>
        </div>
     </div>
    </div>
    <br>
   <hr style="color: white;">
   <div class="one_line_list">
    <div class="imside_one_linelist">
      <ul>
          <li class="copyright">@2024 The Yours Bank Limited</li>
        
      </ul>
    </div>
   </div>
   <div class="copy_right">
    <div class="ccopy_1"><p>© 1996-2023, Yours Bank By Debashis, Inc. </p></div>

   </div>
   <br>
   <div class="clmr">
   <div class="dsclmr">
   <p>Disclaimer: We use cookies to provide a user-friendly experience.
       By continuing to browse this site, it shall be deemed that you have accorded your 
       consent to us for the use of cookies and accepted the terms of our cookie policy.
       </p>
   </div>
   </div>
        </footer>
    </body>
</html>
