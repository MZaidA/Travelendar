<%-- 
    Document   : formEdit
    Created on : Oct 18, 2017, 11:06:35 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LocationDAO, Model.Location, java.util.*"%>
<%@page import="Model.District"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>JSP Page</title>
        <%
            List<District> districts = LocationDAO.getDistrict();
            request.setAttribute("districts", districts);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@ include file = "../navbarManage.jsp" %>
        <div id="mainPanel">
            <% 
            String locationId = request.getParameter("locationId");
            Location loc = LocationDAO.getLocationById(locationId);
            %>
            <h1>UPDATE LOCATION</h1>
            <div class="form">
                <form action="editLocation.jsp" method="get">
                    <label for="fLocation">Location</label>
                    <input type="text" id="mLocation" name="locationName" placeholder="Location..." >
                    <label for="faddres">Address</label>
                    <input type="text" id="mAddress" name="address" placeholder="Address..." >
                    <label for="fCity">City</label>
/                   <select name="districtId" class="minimal">
                        <c:forEach items="${districts}" var="item">
                            <option value="${item.districtId}">${item.districtName}</option>
                        </c:forEach>
                    </select>
                    <label for="locationId" hidden>Location</label>
                    <input type="hidden" name="locationId" value="<%=loc.getLocationId()%>" >
                    <input type="submit" name="submit" value="Edit">
                </form>
            </div>
        </div>
    </body>
</html>
