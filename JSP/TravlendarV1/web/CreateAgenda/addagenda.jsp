<%-- 
    Document   : addagenda
    Created on : Oct 17, 2017, 7:57:17 AM
    Author     : syamcode
--%>

<%@page import="Model.Event"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.EventDAO" %>
<%--<jsp:useBean class="Model.Event" id="event"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="event"></jsp:setProperty>


<jsp:getProperty property="eventName" name="event"></jsp:getProperty>--%>
<% 
    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy hh : mm a", Locale.US);
    
    String eventName = request.getParameter("eventName");
    Integer loc2Id = Integer.parseInt(request.getParameter("loc2Id"));
    Integer locationId = Integer.parseInt(request.getParameter("locationId"));
    String startDate = request.getParameter("startDate");
    String endDate = request.getParameter("endDate");
    String startTime = request.getParameter("startTime");
    String endTime = request.getParameter("endTime");
    String description = request.getParameter("description");
    
    Date start = dateFormat.parse(startDate + " " + startTime);
    Date end = dateFormat.parse(endDate + " " + endTime);
    
    Event event = new Event();
    event.setEventName(eventName);
    event.setLoc2Id(loc2Id);
    event.setLocationId(locationId);
    event.setArrivalTime(start);
    event.setEndTime(end);
    event.setDescription(description);
    
    int status = EventDAO.save(event);
    if(status!=0) {
        response.sendRedirect("../Calendar/");
    }
    else {
        System.out.println("FAIL");
    }
%>
