<%-- 
    Document   : index
    Created on : Nov 25, 2017, 7:18:51 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="../Assets/css/Style.css"/>
        <title>Login & Sign Up Page</title>
    </head>
    <body>
        <div class="all-content">
            <div class="header">
                <div class="lfloat marginLeft">
                    <h2><a href="#" title="Buka Travlendar Home">Travlendar</a></h2>
                </div>
                <div class="menu_login_container rfloat">
                <% 
                    String profile_msg=(String)request.getAttribute("profile_msg");  
                    if(profile_msg!=null){  
                    out.print(profile_msg);  
                    }  
                    String login_msg=(String)request.getAttribute("login_msg");  
                    if(login_msg!=null){  
                    out.print(login_msg);  
                    }  
                 %>
                    <form action="loginprosess.jsp">
                        <table>
                            <tbody>
                                <tr>
                                    <td><label for="email">username</label></td>
                                    <td><label for="pass">password</label></td>
                                </tr>
                                <tr>
                                    <td><input type="user" name="username"  placeholder="username"></td>
                                    <td><input type="password" name="password"  placeholder="password"></td>
                                    <td><input type="submit" value="Login" style="padding: 5px 5px 5px 5px;"/></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    
                                </tr>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
            <div>
                <div class="content-body">
                    <div class="kolom-kiri marginLeft">
                        <img src="peta.png" width="700" height="600px">
                    </div>
                    <div class="kolom-kanan">
                        
                        <h3> you don't have an account ? ? </h3><br>
                        <h3> register now </h3>
                            <form autocomplete="on" action="addUser.jsp" method="POST" >
                           
                            <input type="name" style="width: 100%;" class="username" name="username" placeholder="username" required /><br>
                            <input type="password" class="password" name="password" id="password" placeholder="password" required /><br>
                            <input type="password" class="password" name="password" id="confirm_password" placeholder="repeat password" required /><br><br>
                            <input type="submit" class="button" name="submit" value="submit">
                               
                            </form>
                    </div>
                </div>
            </div>
        </div>
<script>
var password = document.getElementById("password"),
confirm_password = document.getElementById("confirm_password");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;
</script>
                        
    </body>
</html>
