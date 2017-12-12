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
    SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy hh:mm");
    String eventName = request.getParameter("eventName");
    String startloc = "";
    String location = request.getParameter("endLoc");
    String arrivalTime = request.getParameter("arrivalTime");
    String endDate = request.getParameter("endDate");
    Date start = dateFormat.parse(arrivalTime);
    Date end = dateFormat.parse(endDate);
    String mode = request.getParameter("transport");
    if(request.getParameter("startLocationId")!="") {
        startloc = request.getParameter("startLoc");
    }
    else {
//        Event lastEvent= SuggestionDAO.getLastEvent(arrivalTime);
//            if(lastEvent!=null) {
//                startloc = lastEvent.getLocationId();
//            }
    }
    
//    UnscheduledTravelingTable uns = UnscheduledTravelingTableDAO.getUnscheduledTravelingTableById(request.getParameter("UNSCHEDULED_TRANSPORTATION_ID"));
    Event event = new Event();
    event.setUsername(username);
    event.setEventName(eventName);
    event.setOrigin(startloc);
    event.setDestination(location);
    event.setArrivalTime(start);
    event.setEventEnd(end);
    event.setDepartureTime();
    event.setTravelMode(transport);
    event.setAvoidTolls(avoidTolls);
//    event.setDepartureToLocation(new Date(start.getTime() - uns.getTravelingTime()*60000));
    
    int status = EventDAO.save(event);
    if(status!=0) {
        response.sendRedirect("../Calendar/");
    }
    else {
        System.out.println("FAIL");
    }
%>
