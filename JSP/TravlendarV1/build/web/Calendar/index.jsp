<%-- 
    Document   : index
    Created on : Sep 19, 2017, 2:38:22 PM
    Author     : afadh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat, java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
    <jsp:include page="../head.jsp" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel='stylesheet' href='../Assets/lib/fullcalendar.css'/>
    <link href='../Assets/lib/fullcalendar.print.min.css' rel='stylesheet' media='print' />
    <script src='../Assets/lib/jquery.min.js'></script>
    <script src='../Assets/lib/moment.min.js'></script>
    <script src='../Assets/lib/fullcalendar.min.js'></script>
        <title>Calendar</title>
         <%
            String username=(String)session.getAttribute("username"); 
            List<Event> events = EventDAO.getAll(username);
            request.setAttribute("events", events);
        %>
        <style>
        #calendar {
		max-width: 900px;
		margin: 0 auto;
	}
        .holiday {
        background: red;
        }
        </style>
    <script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
                        dayRender: function (date, cell) {
                            cell.css("background-color", "rgba(255, 189, 50, 0.9)");
                        },
                        eventColor: '#016ba0',
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay,listWeek'
			},
			defaultDate: '2017/12/10',
			navLinks: true, // can click day/week names to navigate views
			editable: false,
                        businessHours: true, // display business hours
			eventLimit: true, // allow "more" link when too many events
                        timeFormat: 'H(:mm)',
                         
			events: [
				 <c:forEach items="${events}" var="item">
                                {
                                        title: '${item.eventName}',
                                        start: '${item.arrivalDateStr}T${item.arrivalTimeStr}',
                                        end: '${item.endDateStr}T${item.endTimeStr}',
                                },
                                </c:forEach>
                                {
                                        title: 'Ultah Delvin',
                                        start: '2017-12-01T14:30:00',
                                        end: '2017-12-01T16:30:00',
                                        
                                },
			]
                        
		});
		
	});

</script>
</head>
<body>
    
<jsp:include page="../header.jsp" />

<div class="row">
    
    <div class="navbar">
        <ul>
          <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li class="selected"><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li><a href="../ScheduleEvent"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Schedule Event Form</div></a></li>
          <li><a href="../PreferenceScreen"><img src="../Assets/icon/settings.png" width="28" height="28" style="float:left;"><div class="text-navbar">Preference</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <br />
	<div id='calendar'></div>
    </div>
</div>
</body>

</html>
