<%-- 
    Document   : index
    Created on : Dec 5, 2017, 11:40:22 AM
    Author     : Cecep Sutisna
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
                    <form action="#">
                        <table>
                            <tbody>
                                <tr>
                                    <td><label for="email">email</label></td>
                                    <td><label for="pass">kata Sandi</label></td>
                                </tr>
                                <tr>
                                    <td><input type="email" name="email" id="email" placeholder="email"></td>
                                    <td><input type="password" name="pass" id="pass" placeholder="kata sandi"></td>
                                    <td><a href="../Home"><div class="buttonConfirm" id="login">masuk</div></a></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><div><a href="#">lupa kata sandi?</a></div></td>
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
                    <div class="kolom-kanann">
                     
                    </div>
                    <div class="kolom-tengah">
                    <h5>masukan email yang sudah anda verifikasi, jika lupa akan email anda <br>
                    maka sistem kami tidak dapat membantu untuk memulihkan akun </h5>
                    </div> 
                </div>
                
            </div>
        </div>
    </body>
</html>
