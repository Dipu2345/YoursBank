<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Image</title>
        <style>
            .UpText{
                position: relative;
                left: 260px;
                 display: inline;
                 top: 19px;
                 color: #1A237E;
                text-shadow: 2px -3px 20px black;

            }
            .Imdiv{
             width: 87%;
            height: 311px;
            background-color: #d3d4d5;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
            top: 20px;
            left: 30px;
            box-shadow: 0px 0px 30px black;
            border-radius: 7px;
            }
            .ImForm{
                  width: 231px;
            height: 216px;
            background-color: #c4c4c4;
            
            padding: 0px 5px;display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
                box-shadow: 0px 1px 10px white;
            }
            .IMinput{
                  margin-bottom: 20px;
                outline: none;      
                 height:23px;
           text-align: center;
           border: none;
           position: relative;
           left: 41px;
            }
            .ImBtn{
            padding: 7px 39px;
            background-color: #13a8e1;
            border: none;
            transition: 0.3s;
            border-radius: 6px;
            }
            .ImBtn:hover{
                cursor: pointer;
                color: white;
                transform: scale(1,1.1);
            }
            .images{
                width: 35%;
                height: 242px;
                background: greenyellow;
                position: relative;
                left: -60px;
            }
        </style>
    </head>
    <body>
        <%
            try{
        HttpSession img_sson = request.getSession();
        Integer image_id = (Integer)img_sson.getAttribute("id");
        
        %>
        <sql:setDataSource var="imd_db" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost/bank" user="root" password="root" />
        <sql:query var="getimage" dataSource="${db}" >
            select * from users where user_id=?;
            <sql:param value="<%=image_id%>"/>
        </sql:query>
         <h1 class="UpText">Change Image</h1>
        <div class="Imdiv">
            <c:forEach var="fetch" items="${getimage.rows}">
            <div class="images">
                
                <img src="./image/${fetch.image}" alt="alt" width="100%" height="100%"/>
            </div>
            </c:forEach>
            <%}
                catch(Throwable e){
                out.println(e);
                    }   
            %>
            <form action="UpdateImage" enctype='multipart/form-data' method="post" class="ImForm" onsubmit="return check_iage_set()">
            <input type="file" name="user_image" class="IMinput" id="img_field">
            <br>
            <button class="ImBtn">Update</button>
        </form>
        </div>
            <script>
                function check_iage_set(){
                    let varr = document.getElementById("img_field").value;
                    console.log(varr);          
                }
                
                
            </script>
    </body>
</html>
