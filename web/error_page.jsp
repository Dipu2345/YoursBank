
<%@page isErrorPage="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Error occured</title>
        <style>
            div{
                width: 100%;
                height: 40px;
                background-color: buttonhighlight;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div>
            <h2>Sorry for Inconvinence...</h2>
            <%= exception %>
        </div>
    </body>
</html>
