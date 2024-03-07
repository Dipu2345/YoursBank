
<%@page import="com.bank.user.UserDetails" %>
<%@page import="com.bank.Connector.DbConnect" %>
<%@page import="com.bank.helper.ActivityDao" %>
<%@page import="com.bank.user.AtmDetails" %>
<%
try{
UserDetails use =(UserDetails) session.getAttribute("currentUser");

if(use==null){
response.sendRedirect("../login.jsp");
    }
    
    %>
  
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply For cards</title>
        <link href="./css/applyatmcard1.css" rel="stylesheet" type="text/css"/>
        <style>
        .atm_card{
           width: 100%;
    background-color: #a6a6a6;
    height: 776px;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 30px;
    flex-direction: column;
        }
      .card {
        width: 380px;
        height: 220px;
        /* background-color: rgba(21, 6, 162, 0.813);
     */
        background: linear-gradient(168deg, #0099ff 10% ,#e2e2e2 90% );
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
        /* background: url(./img/Wallpaper.jpg); */
    
     border-radius: 6px;
      }
      .card_head {
        width: 100%;
        height: 45px;
        /* background-color: rgb(13, 227, 227); */
        display: flex;
        align-items: center;
        justify-content: space-between;
      }
      .card_head_left {
        position: relative;
        left: 20px;
        color: rgb(0, 0, 0);
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
      }
      .card_head_right {
        color: black;
        position: relative;
        right: 20px;
        display: flex;
        align-items: center;
        justify-content: space-around;
        flex-direction: column;
        gap: 2px;
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
      }
      .border {
        width: 100%;
        height: 3px;
        background-color: red;
      }
      .border1 {
        width: 60%;
        height: 3px;
        background-color: rgb(255, 30, 0);
      }
      .border2 {
        width: 50%;
        height: 3px;
        background-color: darkmagenta;
      }
      .card_chip {
        width: 100%;
        height: 50px;
        /* background-color: rgb(6, 49, 49); */
        margin-top: 10px;
      }
      .card_chip_inside {
        width: 50px;
        height: 50px;
        position: relative;
        left: 54px;
      }
      .card_no {
        width: 100%;
        height: 50px;
        /* background-color: mediumpurple; */
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .card_no_inside {
        font-size: large;
        width: 60%;
        height: 40px;
        color: black;
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
      }
      .card_no_inside p {
        font-size: 25px;
        margin: 0;
      }
      .card_expiry {
        width: 26%;
        text-align: center;
        color: black;
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
      }
      .cusname {
        width: 100%;
        height: 60px;
        /* background-color: darkred; */
        display: flex;
        align-items: center;
        gap: 54px;
      }
      .cusname_inside {
        width: 60%;
        height: 60px;
        /* background-color: white; */
        text-align: center;
        display: flex;
        gap: 5px;
        flex-direction: column;
        color: black;
        font-family: 'Courier New', Courier, monospace;
        font-weight: bolder;
      }
      .cusname_inside pre {
        font-size: 20px;
        margin: 0;
      }
      .rbi {
        width: 15%;
        height: 50px;
        /* background-color: turquoise; */
      }
      .card_back{
        width: 380px;
        height: 220px;
        /* background-color: rgba(21, 6, 162, 0.813);
     */
        background: linear-gradient(168deg, #0099ff 10% ,#e2e2e2 90% );
        box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
        /* background: url(./img/Wallpaper.jpg); */
        border-radius: 8px;
      }
      .tollfree_no{
        width: 100%;
        height: 30px;
        /* background-color: rgb(124, 109, 109); */
        /* position: relative;
    top: -15px; */

      }
      .tollfree_no p{
        margin: 0;
        margin-left: 10px;
        padding-top: 4px;
        font-family: 'Courier New', Courier, monospace;
        font-weight: 800;
      }
      .black_strip{
        background-color: black;
        width: 100%;
        height: 50px;
      }
      .cvv{
        width: 100%;
        height: 50px;
        /* background-color: aqua; */
        display: flex;
        align-items: center;
        justify-content: center;
      }
      .inside_cvv{
        width: 80%;
        height: 50px;
        background-color: #e2e2e2;
        display: flex;
        align-items: center;
        justify-content: center;

      }
      .left_side_blank{
        width: 80%;
        height: 50px;
        background-color:white;
        display: flex;
        flex-direction: column;
        gap: 4px;

      }
      .cvv_section{
        width: 20%;
        height: 50px;
        background-color: black;
        transition: 2s;
        text-align: center;
        cursor: pointer;
        font-style: italic;
        font-weight: bold;
        font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
        display: flex;
    align-items: center;
    justify-content: center;

      }
      .left_gap{
        width: 100%;
        height: 4px;
        background-color: gray;
      }
      .text_about{
        margin-top: 4px;
        margin-left: 8px;
      }
      .text_about p{
        margin: 0;
        font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
        font-weight: 500;
      }
      .globe{
        width: 10%;
        height: 40px;
        background-image: url(./image/global.png);
        background-repeat: no-repeat;
        background-size: 100%;
        background-position: 0;
        position: relative;
        right: -332px;
         bottom: 10px;
      }
      .alert_about_cvv{
        background-color: #0099ff;
    /* width: 17%; */
    /* height: 20px; */
    position: absolute;
    
    top: 690px;
    left: 800px;
    color: white;
    padding: 15px 20px;
    text-align: center;
    clip-path: polygon(0% 0%, 100% 0%, 100% 75%, 75% 75%, 75% 100%, 50% 75%, 0% 75%);
    animation:alert_cvv 4s infinite ease ;

      }
      .alert_about_cvv p{
        margin: 0;
        font-family: monospace;
      }
      @keyframes alert_cvv{
        0%{
            opacity: 0;
        }
        25%{
            opacity: 1;
        }
        50%{
            opacity: 0;
        }
        75%{
            opacity: 1;
        }
        100%{
            opacity: 0;
        }
      }
       .AccountNotActivated1{
                color:red;
                text-align: center;
                font-family: monospace;
                animation: text_clr1 infinite ease-in-out 2.5s;
                font-size: 6px !important; 
                    width: 77%;
                 position: relative;
                  top: 452px;

                
            }
            @keyframes text_clr1{
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
            .AccountNotActivated1 h2{
                margin-bottom: 15px;
            }
    </style>
    </head>
    <body>
        
          <%
       
 
    ActivityDao da = new ActivityDao(DbConnect.getConnect());
    if(da.checkAccountActivated(use.getUser_id())){
    
       
    
    AtmDetails atm_det = da.getAtmDetails(use.getUser_id());
    String mod_atm_no = "";
    
%>
        <%
        if(da.checkAtmAppliedOrNot(use.getUser_id())){
            %>
             <div class="atm_card">
  <div class="card">
    <div class="card_head">
      <div class="card_head_left">Debit Card</div>
      <div class="card_head_right">
        Yours Bank
        <div class="border"></div>
        <div class="border1"></div>
        <div class="border2"></div>
      </div>
    </div>
    <div class="card_chip">
      <div class="card_chip_inside">
        <img src="./image/atmchip.png" width="100%" height="100%" alt="" />
      </div>
    </div>
    <div class="card_no">
      <div class="card_no_inside">
          
          <%
          
          String atmno = String.valueOf(atm_det.getAtm_no());
          int dgt =0;
//          out.println(atmno);
          String one ="";
          String two ="";
          String three ="";
          for(int i=0;i<=3;i++){
          one+=atmno.charAt(dgt);
          dgt++;
              }
              for(int i=0;i<=3;i++){
          two+=atmno.charAt(dgt);
          dgt++;
              }
              for(int i=0;i<=3;i++){
          three+=atmno.charAt(dgt);
          dgt++;
              }
//          out.println(atmno);
          
          %>
        <p><%= one %>&nbsp;<%= two %>&nbsp;<%= three %></p>
      </div>
      <div class="card_expiry">
        <div class="validthru">Valid Thru</div>
        <div class="expdate">03/48</div>
      </div>
    </div>
    <div class="cusname">
      <div class="cusname_inside">
        <pre><%= use.getUser_name()%></pre>
        <div class="border"></div>
        <div class="border1"></div>
        <div class="border2"></div>
        
      </div>
      <div class="rbi">
        <img src="./image/rbilogo.png" width="100%" height="100%" alt="">
      </div>
    </div>
  </div>
  <div class="card_back">
    <div class="tollfree_no">
        <p>For Customer Service Call-1800 180 180</p>
    </div>
    <div class="black_strip"></div>
    <div class="cvv">
        <div class="inside_cvv">
            <div class="left_side_blank">
                <div class="left_gap"></div>
                <div class="left_gap"></div>
                <div class="left_gap"></div>
                <div class="left_gap"></div>
                <div class="left_gap"></div>   
                <div class="left_gap"></div>   
                <div class="left_gap"></div>    
            </div>
            <div class="cvv_section" id="cvv" onclick="showcvv()">
                <p class="actual_cvv"><%= atm_det.getCvv()%></p>
            </div>
           
        </div>
        <div class="alert_about_cvv" id="alert_about_cvv">
           <p> click to View cvv</p>
        </div>
    </div>
    <div class="text_about">
        <p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Dolorum cum velit eligenhic, iste libero pariatur veniam, odit iure.</p>
    </div>
    <div class="globe">

    </div>
  </div>
  </div>
            
            
            
            <%}
            else{
        %>
        <div class="applyforcard">
            <div class="inside_applyforcard">
                <div class="apply_heading">Apply ATM Card</div>
                <form action="ApplyForAtm" class="inside_applyforcard_form" method="post" id="main_form_data">
                    <div class="form_type">
                        <label class="label_for_input">Name</label><br>
                        <input type="text" name="name" value="<%=use.getUser_name()%>">
                    </div>
                     <div class="form_type">
                        <label class="label_for_input">Mobile Number</label><br>
                        <input type="number" name="user_mob" value="<%= use.getUser_mobile()%>">
                    </div>
                     <div class="form_type">
                        <label class="label_for_input">Account Number</label><br>
                        <input type="text" name="account_number" value="<%=da.getAccountNumber(use.getUser_id())%>" >
                        <input type="hidden" name="atm_no" id="atm_no" >
                      
                        <input type ="hidden" name="cvv" id="cvv" >
                    </div>
                     <div class="form_type1">
                         <button class="submit_button" type="submit">Apply</button>
                    </div>
                </form>
            </div>
        </div>
                     
                        
              <%}%>
                 <% }else{%>
                       <div class="AccountNotActivated1">
                            <h2>Account Not Activated!</h2>
                            <h3> Please go to UPI section and Active Your Account</h3>
                        </div>
              <%}
}catch(Throwable e){
e.printStackTrace();
out.println(e);
}
              %>
                    
           
                        <script>
               
                        </script>
           <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<!--     j query   link-->
        <script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
  <script>
    let br = true;
    function showcvv(){
        let val = document.getElementById("cvv");
        if(br){
        val.style.background="#e2e2e2";
        br=false;
        document.getElementById("alert_about_cvv").style.display="none";
        }
        else{
            val.style.background="black";
            document.getElementById("alert_about_cvv").style.display="none";
            br=true;
        }

    }
  </script>
  <script>
      $(document).ready(function(){
//        alert("hii"); 
        let str = "";
        
        for(let i=1;i<=12;i++){
            let char =Math.trunc(Math.random()*9);
            str+=char;
        }
        let val = $("#atm_no").val(str);
        let cvv ="";
        for(let i=1;i<=3;i++){
            let char =Math.trunc(Math.random()*9);
            cvv+=char;
        }
        $("#cvv").val(cvv);   
      });
      
      
  </script>
<!--  <script>
      $(document).ready(function (){
          alert("it is ");
        $("#main_form_data").on('submit',function(event){
             event.preventDefault();
            let form = new FormData(this);
            console.log(form);
            $.ajax({
                url: "ApplyForAtm",
                type: 'POST',
                data: form,
                success: function (data, textStatus, jqXHR) {
                        console.log(data);
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.log(jqXHR);
                    },
                    processData: false,
                    contentType: false
                   
                
            });
        });
      });
      
  </script>-->
    </body>
    
</html>
