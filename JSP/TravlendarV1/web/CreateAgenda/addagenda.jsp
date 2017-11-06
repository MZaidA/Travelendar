<%-- 
    Document   : addagenda
    Created on : Oct 17, 2017, 7:57:17 AM
    Author     : syamcode
--%>

<%@page import="Model.UnscheduledTravelingTable"%>
<%@page import="Model.UnscheduledTravelingTable"%>
<%@page import="DAO.UnscheduledTravelingTableDAO"%>
<%@page import="DAO.SuggestionDAO"%>
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
    Integer startloc=0;
    Integer locationId = Integer.parseInt(request.getParameter("eventLocationId"));
    String arrivalTime = request.getParameter("arrivalTime");
    String endDate = request.getParameter("endDate");
    String description = request.getParameter("description");
    Integer unscheduled_id = Integer.parseInt(request.getParameter("UNSCHEDULED_TRANSPORTATION_ID"));
    Date start = dateFormat.parse(arrivalTime);
    Date end = dateFormat.parse(endDate);
    
    if(request.getParameter("startLocationId")!=null) {
        startloc = Integer.parseInt(request.getParameter("startLocationId"));
    }
    else {
        Event lastEvent= SuggestionDAO.getLastEvent(arrivalTime);
            if(lastEvent!=null) {
                startloc = lastEvent.getLocationId();
            }
    }
    
    UnscheduledTravelingTable uns = UnscheduledTravelingTableDAO.getUnscheduledTravelingTableById(request.getParameter("UNSCHEDULED_TRANSPORTATION_ID"));
    Event event = new Event();
    event.setEventName(eventName);
    event.setLoc2Id(startloc);
    event.setLocationId(locationId);
    event.setArrivalTime(start);
    event.setEndTime(end);
    event.setDescription(description);
    event.setUnscheduled_id(unscheduled_id);
    event.setDepartureToLocation(new Date(start.getTime() - uns.getTravelingTime()*60000));
    
    int status = EventDAO.save(event);
    if(status!=0) {
        response.sendRedirect("../Calendar/");
    }
    else {
        System.out.println("FAIL");
    }
%>
