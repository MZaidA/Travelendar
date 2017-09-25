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
<link rel="stylesheet" type="text/css" href="">
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
<link rel="stylesheet" href="style.css">
</head>
<body>
<div id="navbar">
   <a href="#" class="active" >SIGN IN</a>
</div>

<div class="content-wrapper">
	<img class="image" src="bigPic.jpg">
	<div class="text-wraper">
		<h1>simple text</h1>
	</div>
</div>


<div id="text">
	<p style="margin-bottom: 0px;"> LETS SIGN UP </p>
	<p style="margin-top: 0px;">_________</p>
	<p class="lorem"> "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
</div>

<div id="signUpPage">
<form autocomplete="on" action="display.jsp" method="POST">
  <input type="text" class="name" name="first" placeholder="First Name" required /> 
  <input type="text" class="name" name="last" placeholder="Last Name" required /><br>
  <input type="email" class="password" name="email" placeholder="email address" required /><br>
  <input type="password" class="password" name="password" placeholder="password" required /><br>
  <input type="password" class="password" name="password_again" placeholder="repeat password" required /><br><br>
  <input type="submit" class="button" name="submit" value="Input Button">
</form>
    </div>

</body>
</html>
