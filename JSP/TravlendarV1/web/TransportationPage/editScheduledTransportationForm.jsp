<%-- 
    Document   : editScheduledTransportationForm
    Created on : Oct 22, 2017, 12:55:05 AM
    Author     : Nino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.ScheduledTransportationDAO, Model.ScheduledTransportation, java.util.*"%>
<%@page import="Model.ScheduledTransportationModes"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Update Scheduled Transportation - Travlendar</title>
        <%
            List<ScheduledTransportationModes> scheduledTransportationModess = ScheduledTransportationDAO.getScheduledTransportationModes();
            request.setAttribute("scheduledTransportationModess", scheduledTransportationModess);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@include file="../navbarManage.jsp"%>
        <div id="mainPanel">
            <% 
                String scheduledTransportationId = request.getParameter("scheduledTransportationId");
                ScheduledTransportation sch = ScheduledTransportationDAO.getScheduledTransportationById(scheduledTransportationId);
            %>
            <h1>UPDATE SCHEDULED TRANSPORTATION</h1>
            <div class="form">
                <form action="editScheduledTransportation.jsp">
                    <input type="hidden" id="mScheduledTransportationId" name="scheduledTransportationId" value="<%=sch.getScheduledTransportationId()%>">
                    <label for="fScheduledTransportationModes">Transportation Type</label>
                    <select name="transportationId" class="minimal">
                        <c:forEach items="${scheduledTransportationModess}" var="item">
                            <option value="${item.transportationId}">${item.transportationType}</option>
                        </c:forEach>
                    </select>
                    <label for="fScheduledTransportationName">Transportation Name</label>
                    <input type="text" id="mScheduledTransportationName" name="scheduledTransportationName" placeholder="Transportation Name...">
                    <input type="submit" name="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
