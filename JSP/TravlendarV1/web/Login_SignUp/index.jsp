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
                    <form action="#">
                        <table>
                            <tbody>
                                <tr>
                                    <td><label for="email">email atau username</label></td>
                                    <td><label for="pass">Kata Sandi</label></td>
                                </tr>
                                <tr>
                                    <td><input type="email" name="email" id="email"></td>
                                    <td><input type="pass" name="pass" id="pass"></td>
                                    <td><div class="buttonConfirm" id="login">Masuk</div></td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td><div><a href="#">Lupa kata sandi?</a></div></td>
                                </tr>
                            </tbody>
                        </table>

                    </form>
                </div>
            </div>
            <div>
                <div class="content-body">
                    <div class="kolom-kiri marginLeft">
                        <img src="baru.png" width="600" height="600px">
                    </div>
                    <div class="kolom-kanan">
                      <h3> belum punya akun ? </h3><br>
                      <h3> daftar sekarang </h3>
                      <form autocomplete="on" action="display.jsp" method="POST">
                     <input type="text" class="name" name="first" placeholder="nama depan" required /> 
                     <input type="text" class="name" name="last" placeholder="nama belakang" required /><br>
                     <input type="text" class="password" name="email" placeholder="alamat email" required /><br>
                     <input type="text" class="password" name="password" placeholder="kata sandi" required /><br>
                     <input type="text" class="password" name="password_again" placeholder="ulang kata sandi" required /><br><br>
                     <input type="submit" class="button" name="submit" value="lets go">
                     </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
