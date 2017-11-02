<%-- 
    Document   : editEstimatedTimePrivateForm
    Created on : Oct 18, 2017, 11:32:58 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UnscheduledTravelingTableDAO, Model.UnscheduledTravelingTable, java.util.*"%>
<%@page import="Model.Location"%>
<%@page import="Model.UnscheduledTransportation"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Update Unscheduled Traveling - Travlendar</title>
        <%
            List<Location> locations = UnscheduledTravelingTableDAO.getLocation();
            request.setAttribute("locations", locations);
        %>
        <%
            List<UnscheduledTransportation> unscheduledTransportations = UnscheduledTravelingTableDAO.getUnscheduledTransportation();
            request.setAttribute("unscheduledTransportations", unscheduledTransportations);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@ include file = "../navbarManage.jsp" %>
        <div id="mainPanel" style="overflow-x:hidden;">
            <% 
                String unscheduledTravelingId = request.getParameter("unscheduledTravelingId");
                UnscheduledTravelingTable unst = UnscheduledTravelingTableDAO.getUnscheduledTravelingTableById(unscheduledTravelingId);
            %>
            <h1>UPDATE UNSCHEDULED TRAVELING</h1>
            <div class="form">
                <form action="editUnscheduledTravelingTable.jsp">
                    <input type="hidden" id="mUnscheduledTravelingId" name="unscheduledTravelingId" value="<%=unst.getUnscheduledTravelingId()%>">
                    <label for="fLocation">Starting Location</label>
                    <select name="startLocationId" class="minimal">
                        <c:forEach items="${locations}" var="item">
                            <option value="${item.locationId}">${item.locationName}</option>
                        </c:forEach>
                    </select>
                    <label for="fLocation">Destination</label>
                    <select name="eventLocationId" class="minimal">
                        <c:forEach items="${locations}" var="item">
                            <option value="${item.locationId}">${item.locationName}</option>
                        </c:forEach>
                    </select>
                    <label for="fUnscheduledTransportation">Transportation Type</label>
                    <select name="unscheduledTransportationId" class="minimal">
                        <c:forEach items="${unscheduledTransportations}" var="item">
                            <option value="${item.unscheduledTransportationId}">${item.unscheduledTransportationType}</option>
                        </c:forEach>
                    </select>
                    <label for="fTravelingTime">Traveling Time</label>
                    <input type="text" id="mTravelingTime" name="travelingTime" placeholder="Traveling Time..." value="<%=unst.getTravelingTime()%>">
                    <input type="submit" name="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
