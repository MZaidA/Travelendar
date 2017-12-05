<%-- 
    Document   : index
    Created on : Sep 25, 2017, 12:08:46 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>sign in</title>
<style>
body {
    margin: 0px;
    border: 0px;
    background-image: url("muka.png");   
}
form {
    margin: 0;
    margin-left: 425px;
    height: 60px;
    margin-top: 120px;    
}
h1 {
    font-size: 30px;
}
h2 {
    font-size: 16px;
}
#text {
    text-align: center;
    font-family: sans-serif;
    color: white;
}
.Username {
    width: 50%;
    height: 75%;
    padding: 12px 20px;
    margin: 2px;
    font-size: 29px;
}
.button {
    background-color: white;
    border: 2px;
    color: lightblue;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin-top: 10px;
    margin-left: 195px;
    cursor: pointer;
}
#button {
                margin: 5% auto;
                width: 100px;
                text_align: center;
            }
            #button a{
                width: 100px;
                height: 30px;
                vertical-align: middle;
                background-clor: #F00;
                color: #fff;
                text-decoration: none;
                padding: 10px;
                border-radius: 5px;
                border: 1px solid transparent;
            }
            #popup{
                width: 100%;
                height: 100%;
                position: fixed;
                background: rgba(0,0,0,.7);
                top: 0;
                left: 0;
                z-index: 9999;
                visibility: hiden;
            }
            .window{
                width: 400px;
                height: 100px;
                background: #fff;
                border-radius: 10px;
                position:relative;
                padding: 10px;
                text-align: center;
                margin: 15% auto;
            }
            .window h2{
                margin: 30px 0 0 0;
            }
            .close-button{
                width: 6%;
                height: 20%;
                line-height: 23px;
                background: #000;
                border-radius: 50%;
                border: 3px solid #fff;
                display: block;
                text-align: center;
                color: #fff;
                text-decoration: none;
                positition: absolute;
                top:-10px;
                right: -10px;
            }
            #popup:target{
                visibility: visible;
            }

</style>
</head>
<body>
<div id="text">
    <h1>oh, hi again</h1>
    <h2>go ahead and sign in to get started</h2>
</div>

<form autocomplete="on" action="/Travlendar/Home/index.jsp" method="POST">
    <input type="text" class="Username" name="username" placeholder="username"><br>
    <input type="password" class="Username" name="password" placeholder="password"><br>
    <input type="submit" class="button" value="Login">
</form>
    <div id="button"><a href="#popup">Pesan></a></div>
        <div id="popup">
        <div class="window">
            <a href="#" class="close-button" title="Close">X</a>
            <h2>Selamat Datang di DUMETSCHOOL </h2>
        </div>
        </div>
</body>
</html>

