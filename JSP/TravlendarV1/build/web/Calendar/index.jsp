<%-- 
    Document   : index
    Created on : Sep 19, 2017, 2:38:22 PM
    Author     : afadh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel='stylesheet' href='../Assets/lib/fullcalendar.css'/>
    <link rel='stylesheet' href='../Assets/css/Style.css'/>
    <script src='../Assets/lib/jquery.min.js'></script>
    <script src='../Assets/lib/moment.min.js'></script>
    <script src='../Assets/lib/fullcalendar.min.js'></script>
        <title>JSP Page</title>
         <%
            List<Event> events = EventDAO.getAll();
            DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
            DateFormat tf = new SimpleDateFormat("hh:mm:ss");
            request.setAttribute("events", events);
        %>
    <script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listWeek'
			},
			defaultDate: '2017-10-12',
			navLinks: true, // can click day/week names to navigate views
			editable: false,
			eventLimit: true, // allow "more" link when too many events
			events: [
				 <c:forEach items="${events}" var="item">
                                {
                                        title: '${item.eventName}',
                                        start: '${item.arrivalDateStr}T${item.arrivalTimeStr}',
                                        end: '${item.endDateStr}T${item.endTimeStr}',
                                },
                                </c:forEach>
			]
		});
		
	});

</script>
</head>
<body>
    
<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">

</div>

<div class="row">
    <div class="navbar">
        <ul>
          <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li class="selected"><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li><a href="../CreateAgenda"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Agenda</div></a></li>
           <li><a href="../AdminPage"><img src="../Assets/icon/manage.png" width="28" height="28" style="float:left;"><div class="text-navbar">Manage</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <br />
	<div id='calendar'></div>
    </div>

</body>

</html>
