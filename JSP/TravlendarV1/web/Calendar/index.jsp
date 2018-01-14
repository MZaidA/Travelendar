<%-- 
    Document   : index
    Created on : Sep 19, 2017, 2:38:22 PM
    Author     : afadh
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import = "java.io.*,java.util.*, javax.servlet.*" %>
<%@page import="java.text.DateFormat"%>
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
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <title>Calendar</title>
         <%
            String username=(String)session.getAttribute("username"); 
            List<Event> events = EventDAO.getAll(username);
            request.setAttribute("events", events);
            
            
        if(username == null)
        {
            response.sendRedirect("../Login_SignUp");
        }
        else{
        
        }
        %>
        <style>
        #calendar {
		max-width: 900px;
		margin: 0 auto;
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
				right: 'month,agendaWeek,agendaDay'
			},
			defaultDate: '<%
                                        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                                        Date date = new Date(); 
                                        String waktu = sdf.format(date);
                                        out.print(waktu);
                                       %>',
			navLinks: true, // can click day/week names to navigate views
			editable: false,
                        businessHours: true, // display business hours
			eventLimit: true, // allow "more" link when too many events
                        timeFormat: 'H(:mm)',
                         
			events: [
				 <c:forEach items="${events}" var="item">
                                {
                                        title: '${item.eventName}',
                                        start: '${item.startDateStr}T${item.startTimeStr}',
                                        end: '${item.endDateStr}T${item.endTimeStr}',
                                },
                                </c:forEach>
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
          <li><a class="selected" href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li><a href="../Create_Event"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Create Event</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <br />
	<div id='calendar'></div>
    </div>
    
</div>
</body>

</html>
