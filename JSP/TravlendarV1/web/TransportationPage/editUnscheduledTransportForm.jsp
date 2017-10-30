<%-- 
    Document   : editTransport
    Created on : Oct 18, 2017, 11:23:04 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UnscheduledTransportationDAO, Model.UnscheduledTransportation, java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Update Unscheduled Transportation - Travlendar</title>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@include file = "../navbarManage.jsp" %>
        <div id="mainPanel">
            <% 
                String unscheduledTransportationId = request.getParameter("unscheduledTransportationId");
                UnscheduledTransportation uns = UnscheduledTransportationDAO.getUnscheduledTransportationById(unscheduledTransportationId);
            %>
            <h1>UPDATE UNSCHEDULED TRANSPORTATION</h1>
            <div class="form">
                <form action="editUnscheduledTransportation.jsp">
                <input type="hidden" id="mUnscheduledTransportationId" name="unscheduledTransportationId" value="<%=uns.getUnscheduledTransportationId()%>">
                <label for="fname">Transportation Type</label>
                <input type="text" id="mUnscheduledTransportationType" name="unscheduledTransportationType" placeholder="Transportation Type..." required>
                <input type="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
