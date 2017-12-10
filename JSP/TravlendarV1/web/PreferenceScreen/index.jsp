<%-- 
Document   : index.jsp
Created on : Sep 21, 2017, 9:51:43 PM
Author     : myLIFE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>


<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<jsp:include page="../head.jsp" />

<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>

<%
    List<Event> events = EventDAO.getAll();
    request.setAttribute("events", events);
    
%>

<jsp:include page="../header.jsp" />

<div class="row">
<div class="navbar">
    <ul>
      <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
      <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
      <li><a href="../ScheduleEvent"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Schedule Event Form</div></a></li>
      <li class="selected"><a href="../PreferenceScreen"><img src="../Assets/icon/settings.png" width="28" height="28" style="float:left;"><div class="text-navbar">Preference</div></a></li>
    </ul>
</div><!--Class Navbar-->

<div class="column content">
<h1> Preference </h1>
<br/>
    <div class="form">
        <form action="">
                <input type="hidden" id="homeId" name="homeId"/> <!--Untuk Editing-->
                <label for="fname">Home Address</label>
                <input type="text" id="HomeAddress" name="HomeAddress" placeholder="..."/>
                <br/>
                <label for="fname">Work Address</label>
                <input type="text" id="WorkAddress" name="WorkAddress" placeholder="..."/>
                <br/>
                <label for="fname">Maximum walking distance (in Kilometer)</label>
                <br/>
                <select id="walking" name="walking">
                <option value="satu">1 Km</option>
                <option value="dua">2 Km</option>
                <option value="tiga">3 Km</option>
                <option value="empat">4 Km</option>
                <option value="lima">5 Km</option>
                </select>
                <br/><br/>
                <input type="submit" value="Submit"/>
        </form>
    </div>    
</div>

</body>
</html>