<%-- 
    Document   : addagenda
    Created on : Oct 17, 2017, 7:57:17 AM
    Author     : syamcode
--%>

<%@page import="Model.User"%>
<%@page import="Model.Event"%>
<%@page import="java.util.Locale"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DAO.EventDAO" %>
<%--<jsp:useBean class="Model.Event" id="event"></jsp:useBean>--%>
<%--<jsp:setProperty property="*" name="event"></jsp:setProperty>


<jsp:getProperty property="eventName" name="event"></jsp:getProperty>--%>
<% 
    SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm");
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
    //event.setAvoidTolls(avoidTolls);
//    event.setDepartureToLocation(new Date(start.getTime() - uns.getTravelingTime()*60000));
    
    int status = EventDAO.save(event);
    if(status!=0) {
        response.sendRedirect("../Calendar/");
    }
    else {
        System.out.println("FAIL");
    }
%>
