<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/styleMenu.css">
<title>Travelendar</title>
</head>

<body>

<h1>Create a New Agenda</h1>
<p>Menu yang membuat agenda baru</p>

<div style="overflow-x:auto;">
<div>
<br><br>
<div class="form">
	<form action="/action_page.php">

    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="EventName" placeholder="...">
    
    <label for="fname">Location</label>
    <input type="text" id="location" name="Locatioin" placeholder="...">
    
    <label for="fname">Date</label>
    <input type="text" id="date" name="Date" placeholder="...">
    
    <label for="fname">Keterangan</label>
    <input type="text" id="keterangan" name="Keterangan" placeholder="...">

    <input type="submit" value="Add">
  </form>
</div>
<br>
<a href="\Travlendar\Home" class="button1">Home</a>
<br><br><br><br>
</body>
</html>

