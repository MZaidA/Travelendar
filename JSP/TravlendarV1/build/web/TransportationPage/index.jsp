<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:34:32 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.TransportPrivateDAO, Model.PrivateTransportation, java.util.*"%>
<%@page import="DAO.ScheduledTransportationDAO, Model.ScheduledTransportation, java.util.*"%>
<%@page import="Model.ScheduledTransportationModes"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Manage Transportation - Travlendar</title>
        <%
            List<PrivateTransportation> transports = TransportPrivateDAO.getAll();
            request.setAttribute("transports", transports);
        %>
        <%
            List<ScheduledTransportation> scheduledTransportations = ScheduledTransportationDAO.getAll();
            request.setAttribute("scheduledTransportations", scheduledTransportations);
        %>
        <%
            List<ScheduledTransportationModes> scheduledTransportationModess = ScheduledTransportationDAO.getScheduledTransportationModes();
            request.setAttribute("scheduledTransportationModess", scheduledTransportationModess);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
	<%@ include file="../navbarManage.jsp"%>
        <div id="mainPanel">
            <div class="tab">
                <button class="tablinks" onclick="openTab(event, 'Unscheduled')" id="defaultOpen">Unscheduled</button>
                <button class="tablinks" onclick="openTab(event, 'Scheduled')">Scheduled</button>
            </div>
            <br/>
        
            <div id="Unscheduled" class="tabcontent">
                <h1>MANAGE UNSCHEDULED TRANSPORTATION</h1>
                <table align="center">
                    <tr>
                        <th>No</th>
                        <th>Transportation Type</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${transports}" var="item" varStatus="loop">
                        <tr>
                            <td> ${loop.index+1}</td>
                            <td> ${item.privateType}</td>
                            <td>
                                <a href="editUnscheduledTransportForm.jsp?privateId=${item.privateId}" class="button1">Update</a>
                                <a href="deleteUnscheduledTransportation.jsp?privateId=${item.privateId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <br>
                <br>
                <div class="form">
                    <form action="addUnscheduledTransportation.jsp">
                        <label for="fname">Transportation Type</label>
                        <input type="text" id="mTransportation" name="privateType" placeholder="Transportation Type...">          
                        <input type="submit" name="submit" value="Add">
                    </form>
                </div>
            </div>
        
            <div id="Scheduled" class="tabcontent">
                <h1>MANAGE SCHEDULED TRANSPORTATION</h1>
                <table align="center">
                    <tr>
                        <th>No</th>
                        <th>Transportation Type</th>
                        <th>Transportation Name</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${scheduledTransportations}" var="item" varStatus="loop">
                        <tr>
                            <td> ${loop.index+1}</td>
                            <td> ${item.transportationType}</td>
                            <td> ${item.scheduledTransportationName}</td>
                            <td>
                                <a href="editScheduledTransportationForm.jsp?scheduledTransportationId=${item.scheduledTransportationId}" class="button1">Update</a>
                                <a href="deleteScheduledTransportation.jsp?scheduledTransportationId=${item.scheduledTransportationId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                <br>
                <br>
                <div class="form">
                    <form action="addScheduledTransportation.jsp">
                        <label for="fScheduledTransportationModes">Transportation Type</label>
                        <select name="transportationId" class="minimal">
                            <c:forEach items="${scheduledTransportationModess}" var="item">
                                <option value="${item.transportationId}">${item.transportationType}</option>
                            </c:forEach>
                        </select>
                        <label for="fScheduledTransportationName">Transportation Name</label>
                        <input type="text" id="mScheduledTransportationName" name="scheduledTransportationName" placeholder="Transportation Name...">
                        <input type="submit" name="submit" value="Add">  
                    </form>
                </div>
            </div>
        </div>
        
        <script>
            function openTab(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for(i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for(i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("defaultOpen").click();
        </script>
    </body>
</html>
