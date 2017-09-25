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

</style>
</head>
<body>
<div id="text">
    <h1>oh, hi again</h1>
    <h2>go ahead and sign in to get started</h2>
</div>

<form autocomplete="on" action="/Travlendar/Home/" method="POST">
    <input type="text" class="Username" name="username" placeholder="username"><br>
    <input type="password" class="Username" name="password" placeholder="password"><br>
    <input type="submit" class="button" value="Login">
</form>
</body>
</html>

