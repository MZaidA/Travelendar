<%-- 
Document   : index.jsp
Created on : Sep 21, 2017, 9:51:43 PM
Author     : afadh
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

<%
    List<Event> events = EventDAO.getAll();
    request.setAttribute("events", events);
    
%>

<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">

</div>

<div class="row">
<div class="navbar">
    <ul>
      <li class="selected"><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
      <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
      <li><a href="../CreateAgenda"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Event</div></a></li>
    </ul>
</div><!--Class Navbar-->

<div class="column content">
<h1> Upcoming Event </h1>
<!--
    <c:forEach items="${events}" var="item">
    <div class="boxstyle1">
        <div class="row">
            <div class="column">
                <div class="t3">${item.eventName}</div>
                <div class="t4">Departure Date To Location: <br>${item.departureDateStr} Time: ${item.departureTimeStr}</div>
                <div class="t4">Arrival Date At Location: <br>${item.arrivalDateStr} Time: ${item.arrivalTimeStr}</div>
                <div class="t4">Event End To Location: <br>${item.endDateStr} Time: ${item.endTimeStr}</div>
            </div>
            <div class="column2">
                SUGGESTION
            </div>
            <div class="column3">
                <div class="dropdown">
                    <button class="dropbtn">Event Details</button>
                    <div class="dropdown-content">
                      ${item.description}
                    </div>
                </div>
            </div>
        </div>
    </div>
                    
    </c:forEach>-->
    <c:forEach items="${events}" var="item">
    <div class="boxstyle1">
        <table class="column-seratus">
            <tbody>
                <tr>
                    <td class="t3">${item.eventName}</td>
                    <td class="t3">${item.departureDateStr} - ${item.endDateStr}</td>
                    <td class="text-align-center"><button class="button1" onclick="showDetail(${loop.index+1})">Detail Event</button></td>
                </tr>
            </tbody>
        </table>
        <div class="">
            <table class="table-seratus" id="detail1">
                <tbody>
                    <tr>
                        <td>Politeknik Negeri Bandung</td>
                        <td>arrival time : ${item.arrivalTimeStr}</td>
                    </tr>
                    <tr>
                        <td>${item.departureDateStr} - ${item.endDateStr}</td>
                        <td>departure time: ${item.departureTimeStr}</td>
                    </tr>
                    <tr>
                        <td>Motor</td>
                        <td>end time event: ${item.endTimeStr}</td>
                    </tr>
                </tbody>
                </table>
            </div>
    </div>
    </c:forEach>
    <div class="boxstyle1">
        <table class="column-seratus">
            <tbody>
                <tr>
                    <td class="t3">Nama Event</td>
                    <td class="t4" id="datehide2">Tanggal</td>
                    <td class="text-align-center"><button class="button1" onclick="showDetail(2)">Detail Event</button></td>
                </tr>
            </tbody>
        </table>
        <div class="">
            <table class="table-seratus" id="detail2" style="display: none;">
                <tbody>
                    <tr name="detail">
                        <td>Politeknik Negeri Bandung</td>
                        <td>arrival time : 16:00 WIB</td>
                    </tr>
                    <tr name="detail1">
                        <td>Tanggal 02 Oktober 2017</td>
                        <td>departure time: 17:00 WIB</td>
                    </tr>
                    <tr name="detail2">
                        <td>Motor</td>
                        <td>end time event: 18:00 WIB</td>
                    </tr>
                </tbody>
                </table>
            </div>
    </div>
  </div>
</div>

<div class="footer">
Travlender 2017
</div>
<script>
function show(){
    document.getElementById("detail").style.display = "table";
}
</script>
<script>
function showDetail(id) {
    var menu = document.getElementById("detail" + id);
    for(var i = 0; i < 25; i++){
        if(id == i)
        {
            if(menu.style.display == 'none'){
                document.getElementById("detail" + id).style.display = "table";
                document.getElementById("datehide" + id).style.display = "none";
            }
            else
            {
                document.getElementById("detail" + id).style.display = "none";
                document.getElementById("datehide" + id).style.display = "table-cell";
            }
        }
    }
}
</script>
</body>
</html>