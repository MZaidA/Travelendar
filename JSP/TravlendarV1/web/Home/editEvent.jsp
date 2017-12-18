<%-- 
    Document   : editEvent
    Created on : Dec 14, 2017, 6:45:47 AM
    Author     : Toshiba
--%>

<%@page import="Model.User"%>
<%@page import="Model.Event"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.EventDAO"%>
<jsp:include page= "editForm.jsp"></jsp:include>

<% 
SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy hh:mm");
    String username = request.getParameter("username");
    String eventName = request.getParameter("eventName");
    String startloc = "";
    String location = request.getParameter("endLoc");
    String arrivalTime = request.getParameter("arrivalTime");
    String endDate = request.getParameter("endDate");
    Date start = dateFormat.parse(arrivalTime);
    Date end = dateFormat.parse(endDate);
    String mode = request.getParameter("travelmode");
    String[] modeArr = mode.split(",");
    String modeTransportasi = modeArr[0];
    Integer durasi = Integer.parseInt(modeArr[1]);
    System.out.println(modeTransportasi + " heheh " +durasi);
    Date depart = new Date(start.getTime()-durasi*1000);
    startloc = request.getParameter("startLoc");

    Event event = new Event();
    User x = new User();
    x.setUsername(username);
    event.setUsername(x);
    event.setEventName(eventName);
    event.setDepartureLocation(startloc);
    event.setEventLocation(location);
    event.setStartTime(start);
    event.setEndTime(end);
    event.setDepartureTime(depart);
    event.setTravelMode(modeTransportasi);   
    
    int i = EventDAO.update(event);
    if(i!=0)
    {
        response.sendRedirect("index.jsp");
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>
