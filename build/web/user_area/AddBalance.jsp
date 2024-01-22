
<%@page session='true' %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
    <style>
        section{
            width: 40%;
            height: 257px;
            background-color: #13a8e1;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            top: 20px;
            left: 30px;
            box-shadow: 0px 2px 20px #000000;
        }
        #fform{
            width: 231px;
            height: 188px;
            background-color: #f2b20b;
            border-radius:6px; 
            padding: 0px 5px;display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
        }
        .p_input{
            margin-bottom: 20px;
            outline: none;  
            width: 171px;
           height:30px;
           text-align: center;
           border: none;
           border-radius: 6px;
        }
        .p_input::placeholder{
            text-align: center;
        }
        #aab{
            padding: 6px 60px;
            background-color: #13a8e1;
            border: none;
            transition: 0.3s;
            border-radius: 4px;
/*            margin-top: -17px;*/

        }
        #aab:hover {
            transform: scale(1.1);
            cursor: pointer;
            /* border: 1px solid black; */
            color: white;
           
        
        }
        #eyes{
            position: relative;
            top: 3px;
            left: -39px;
        }
        .fa-eye-slash{
            display: none;
        }
       

    </style>
</head>
<body>
    <%
    int id=0;
    try{
    HttpSession sess  = request.getSession();
     id =(int)sess.getAttribute("id");

        }
        catch(Exception e){
    System.out.println(e);
        }
    if(id>=1)
    {
   
        
    %>
    <section>
        <form action="AddBalance" id="fform">
            <input type="text" name="amount" class="p_input" placeholder="Enter Amount " required="">
            <input type="password" name="pin" class="p_input" placeholder="Enter PIN" required id="in"><span id="eyes"><i id="oo" class="fa-solid fa-eye" ></i><i id="cls" class="fa-solid fa-eye-slash"></i></span>
            <button id="aab">ADD</button>
        </form>
    </section>
    <% }
        else{
//    out.println("<script>alert("not loggen in")</script>");
        out.println("sorry you are not logged in  ");
        }
//    }
//     catch(Exception e){
//    out.println(e);
//        }

    
    %>
    <script>

        let inp = document.getElementById("in")
        let close = document.getElementById("cls")
         let open = document.getElementById("oo")
         open.addEventListener('click',()=>{
           
            open.style.display="none";
            close.style.display="block";
            inp.type="text"
            
         })
        
         close.addEventListener('click',()=>{
           
            close.style.display="none";
            open.style.display="block";
            inp.type="password";
            
         })
       
    </script>
</body>
</html>