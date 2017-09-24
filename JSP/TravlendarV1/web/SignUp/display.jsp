<%-- 
    Document   : display
    Created on : Sep 24, 2017, 6:02:20 PM
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
   <a href="" class="active" >SIGN IN</a>
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

    <%
        String firstName = request.getParameter("first");
        String lastName = request.getParameter("last");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        %>

        <table border="0">
            <thead>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>First Name: </td>
                    <td><%= firstName %></td>
                </tr>
                <tr>
                    <td>Last Name: </td>
                    <td><%= lastName %></td>
                </tr>
                <tr>
                    <td>E-mail: </td>
                    <td><%= email %></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><%= password %></td>
                </tr>
            </tbody>
        </table>

</body>
</html>

