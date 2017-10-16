<%-- 
    Document   : index.jsp
    Created on : Sep 21, 2017, 9:51:43 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


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
        String userName = request.getParameter("username");
        %>
    
<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">

</div>

<div class="row">
    <div class="navbar">
        <ul>
          <li class="selected"><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li><a href="../CreateAgenda"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Agenda</div></a></li>
          <li><a href="../ManageLocation"><img src="../Assets/icon/manage.png" width="28" height="28" style="float:left;"><div class="text-navbar">Manage</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <h1> Upcoming Event </h1>
        <div class="boxstyle1">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Kantor DPRD Banka</div>
                    <div class="t4">Time: 20/09/2017 06:45 - 08:30</div>
                </div>
                <div class="column2">
                    SUGGESTION
                </div>
                <div class="column3">
                    <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke bandara</div>
                    <div class="t4">Time: 20/09/2017 10:00 - 11:00</div>
                </div>
                <div class="column2">
                    SUGGESTION
                </div>
                <div class="column3">
                    <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
      <div class="boxstyle11">
      	<div class="row">
        	<div class="column">
                    <div class="t3">Ke Bandara Halim Perdanakusuma<br></div>
                    <div class="t4">Time: 20/09/2017 13:00 - 17:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    SUGGESTION
                </div>
                <div class="column3">
                    <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
      </div>
    
      <div class="boxstyle11">
      <div class="row">
                <div class="column">
                    <div class="t3">Ke Tangerang<br></div>
                    <div class="t4">Time: 20/09/2017 18:00 - 20:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    SUGGESTION
                </div>
                <div class="column3">
                    <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
      </div>
      
        <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Bandara Halim Perdanakusuma <br></div>
                    <div class="t4">Time: 20/09/2017 21:00 - 22:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    SUGGESTION
                </div>
                <div class="column3">
                    <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
      </div>
      
          <div class="boxstyle11">
            <div class="row">
                <div class="column">
                    <div class="t3">Ke Rumah<br></div>
                    <div class="t4">Time: 20/09/2017 21:00 - 22:00</div>
                </div>
                <div class="column2" style="margin-top:2%;text-align:center;color:white;">
                    SUGGESTION
                </div>
                <div class="column3">
                         <div class="dropdown">
                        <button class="dropbtn">Event Details</button>
                        <div class="dropdown-content">
                          Keterangan
                        </div>
                    </div>
                </div>
            </div>
		
        </div>
    </div>
</div>
    

<div class="footer">
Travlender 2017
</div>

</body>
</html>