<%-- 
    Document   : index
    Created on : 4 Dec, 2017, 12:16:54 AM
    Author     : myLIFE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<link rel="stylesheet" href="../Assets/css/Style.css"/>
<link href="../Assets/font?family=Anton|Acme|Boogaloo|Chewy|Glegoo" rel="stylesheet"/>

<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>

<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">

</div>

<div class="row">
<div class="navbar">
    <ul>
      <li class="selected"><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
      <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
      <li><a href="../ScheduleEvent"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Event</div></a></li>
    </ul>
</div><!--Class Navbar-->

<div class="column content">
<h1> Welcome to Travlender </h1>
<div class="boxstyle4">
    <div class="verifform">
        <div class="text-navbar">Beritahu kami bahwa email yang anda daftarkan adalah benar email anda,
            masukkan kode verifikasi yang sudah dikirimkan ke email anda :</div>
        <br>
        <input required type="code" id="code" name="code" required placeholder="******" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z].{6,}"/>
        <br>
        <br>
        <input type="button" class="formbutton2" value="Kirim Ulang"/>
        <input type="button" class="formbutton1" value="Lanjutkan"/>
    </div>
</div>    
</div>

<div class="footer">
Travlender 2017
</div>
</body>
</html>