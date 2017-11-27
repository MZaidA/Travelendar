<%-- 
    Document   : index
    Created on : Sep 24, 2017, 5:49:44 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>travelandar</title>
<style>
body {
	margin: 0px;
	border: 0px;
        background-image: url("muka.png");	
}
form {
	margin-left: 310px;
	height: 60px;
	margin-top: 120px;
	margin-bottom: 10px;
}
#navbar {
	width: 100%;
	height: 70px;
	opacity: 0.6;
	position: fixed;
}
#wrap {
        width : 100%;
        height : 500px
}
#text {
	text-align: center;
	font-family: sans-serif;
	font-style: bold;
	color: white;
}
.name {
	width: 30%;
	height: 75%;
	padding: 12px 20px;
	margin: 2px;
	background-color: white;
	border: none;
	font-size: 25px;
}
.button {
    background-color: white;
    border: none;
    color: lightblue;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    margin-left: 285px;
    cursor: pointer;
}
.password {
	width: 64.2%;
	height: 75%;
	padding: 12px 20px;
	margin: 2px;
	font-size: 29px;
}
.active {
	float: right;
	text-align: right;
	padding-right: 40px;
	padding-top: 20px;
	font-family: sans-serif;
	font-size: 20px;
	color: white;
	text-decoration: none;
}

.lorem {
	font-size: 20px;
}
.text-wrapper {
	position: relative;
}
.text-wrapper h1{
	font-family: 'roboto condensed';
} 
</style>
</head>
<body>
<div id="navbar">
   <a href="\Travlendar\Login" class="active" >SIGN IN</a>
</div>

<div id="text">
        <h2>  creat your own scadule </h2>
        <hr size="3px" width="100px" align="center" color="white">
        <h1> we Help you to manage your travel and scadule </h1> 
        <img src="Building_1.png" width="300" height="400px">
</div>

<div id="text">
	<h2> try to sign up </h2>
        <hr size="3px" width="100px" align="center" color="white">
</div>

<div id="signUpPage">
<form autocomplete="on" action="display.jsp" method="POST">
  <input type="text" class="name" name="first" placeholder="First Name" required /> 
  <input type="text" class="name" name="last" placeholder="Last Name" required /><br>
  <input type="email" class="password" name="email" placeholder="email address" required /><br>
  <input type="password" class="password" name="password" placeholder="password" required /><br>
  <input type="password" class="password" name="password_again" placeholder="repeat password" required /><br><br>
  <input type="submit" class="button" name="submit" value="lets go">
</form>
    </div>

</body>
</html>
