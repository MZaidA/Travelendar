<%-- 
    Document   : indexx
    Created on : Dec 5, 2017, 10:51:24 AM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
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
        
        <div id="button"><a href="#popup">Pesan></a></div>
        <div id="popup">
        <div class="window">
            <a href="#" class="close-button" title="Close">X</a>
            <h2>Selamat Datang di DUMETSCHOOL </h2>
        </div>
        </div>
    </body>
</html>
