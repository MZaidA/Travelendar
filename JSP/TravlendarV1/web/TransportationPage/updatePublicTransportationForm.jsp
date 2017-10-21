<%-- 
    Document   : editPublicTransportationForm
    Created on : Oct 22, 2017, 12:55:05 AM
    Author     : Nino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.PublicTransportationDAO, Model.PublicTransportation, java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Update Public Transportation - Travlendar</title>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@include file="../navbarManage.jsp"%>
        <div id="mainPanel">
            <% 
                String publicId = request.getParameter("publicId");
                PublicTransportation pub = PublicTransportationDAO.getPublicTransportationById(publicId);
            %>
            <h1>UPDATE PUBLIC TRANSPORTATION</h1>
            <div class="form">
                <form action="updatePublicTransportation.jsp">
                    <input type="hidden" id="mPublicId" name="publicId" value="<%=pub.getPublicId()%>">
                    <label for="fPublicType">Transportation Type</label>
                    <input type="text" id="mPublicType" name="publicType" placeholder="Transportation Type...">
                    <label for="fPublicName">Transportation Name</label>
                    <input type="text" id="mPublicName" name="publicName" placeholder="Transportation Name...">
                    <input type="submit" name="submit" value="Update">
                </form>
            </div>
        </div>
    </body>
</html>
