<%-- 
    Document   : editEstimatedTimePrivateForm
    Created on : Oct 18, 2017, 11:32:58 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.PrivateTransportationTravelingDAO, Model.PrivateTransportationTraveling, java.util.*"%>
<%@page import="Model.Location"%>
<%@page import="Model.PrivateTransportation"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Update Private Traveling - Travlendar</title>
        <%
            List<Location> locations = PrivateTransportationTravelingDAO.getLocation();
            request.setAttribute("locations", locations);
        %>
        <%
            List<PrivateTransportation> privateTransportations = PrivateTransportationTravelingDAO.getPrivateTransportation();
            request.setAttribute("privateTransportations", privateTransportations);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@ include file = "../navbarManage.jsp" %>
        <div id="mainPanel" style="overflow-x:hidden;">
            <% 
                String privateTravelingId = request.getParameter("privateTravelingId");
                PrivateTransportationTraveling priv = PrivateTransportationTravelingDAO.getPrivateTravelingById(privateTravelingId);
            %>
            <h1>UPDATE PRIVATE TRANSPORTATION TRAVELING</h1>
            <div class="form">
                <form action="editEstimatedTimePrivate.jsp">
                    <input type="hidden" id="mPrivateTravelingId" name="privateTravelingId" value="<%=priv.getPrivateTravelingId()%>">
                    <label for="fLocation">Starting Location</label>
                    <select name="locationId" class="minimal">
                        <c:forEach items="${locations}" var="item">
                            <option value="${item.locationId}">${item.locationName}</option>
                        </c:forEach>
                    </select>
                    <label for="fLocation">Destination</label>
                    <select name="locLocationId" class="minimal">
                        <c:forEach items="${locations}" var="item">
                            <option value="${item.locationId}">${item.locationName}</option>
                        </c:forEach>
                    </select>
                    <label for="fPrivateTransportation">Transportation Type</label>
                    <select name="privateId" class="minimal">
                        <c:forEach items="${privateTransportations}" var="item">
                            <option value="${item.privateId}">${item.privateType}</option>
                        </c:forEach>
                    </select>
                    <label for="fTravelingTime">Traveling Time</label>
                    <input type="text" id="mTravelingTime" name="travelingTime" placeholder="Traveling Time..." required>
                    <input type="submit" name="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
