<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:32:59 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UnscheduledTravelingTableDAO, Model.UnscheduledTravelingTable, java.util.*"%>
<%@page import="DAO.ScheduledTravelingTableDAO, Model.ScheduledTravelingTable, java.util.*"%>
<%@page import="Model.Location"%>
<%@page import="Model.UnscheduledTransportation"%>
<%@page import="Model.ScheduledTransportation"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Manage Unscheduled Traveling - Travlendar</title>
        <%
            List<UnscheduledTravelingTable> unscheduledTravelingTables = UnscheduledTravelingTableDAO.getAll();
            request.setAttribute("unscheduledTravelingTables", unscheduledTravelingTables);
        <%
            List<Location> locations = UnscheduledTravelingTableDAO.getLocation();
            request.setAttribute("locations", locations);
        %>
        <%
            List<UnscheduledTransportation> unscheduledTransportations = UnscheduledTravelingTableDAO.getUnscheduledTransportation();
            request.setAttribute("unscheduledTransportations", unscheduledTransportations);
        %>
        <title>Manage Scheduled Traveling - Travlendar</title>
        <%
            List<ScheduledTravelingTable> scheduledTravelingTables = ScheduledTravelingTableDAO.getAll();
            request.setAttribute("scheduledTravelingTables", scheduledTravelingTables);
        %>
        <%
            List<Location> slocations = ScheduledTravelingTableDAO.getLocation();
            request.setAttribute("slocations", slocations);
        %>
        <%
            List<ScheduledTransportation> scheduledTransportations = ScheduledTravelingTableDAO.getScheduledTransportation();
            request.setAttribute("scheduledTransportations", scheduledTransportations);
        %>
        
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@include file = "../navbarManage.jsp"%>
        <div id="mainPanel">
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Unscheduled')" id="defaultOpen">Unscheduled</button>
            <button class="tablinks" onclick="openTab(event, 'Scheduled')">Scheduled</button>
        </div>
        <div id="Unscheduled" class="tabcontent">

                <h1>MANAGE UNSCHEDULED TRAVELING</h1>
                <div style="overflow-x: auto;">
                <table align="center">
                    <tr>
                        <th>No</th>
                        <th>Starting Location</th> 
                        <th>Destination</th>
                        <th>Transportation Type</th>
                        <th>Traveling Time (mins)</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${unscheduledTravelingTables}" var="item" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td>${item.startLocationName} </td>
                            <td>${item.eventLocationName}</td>
                            <td>${item.unscheduledTransportationType}</td>
                            <td>${item.travelingTime}</td>
                            <td>
                                <a href="editUnscheduledTravelingTableForm.jsp?unscheduledTravelingId=${item.unscheduledTravelingId}" class="button1">Update</a>
                                <a href="deleteUnscheduledTravelingTable.jsp?unscheduledTravelingId=${item.unscheduledTravelingId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                </div>
 
            <br>
            <br>
            <div class="form">
                <form action="addUnscheduledTravelingTable.jsp">
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
                    <input type="text" id="mTravelingTime" name="travelingTime" placeholder="Traveling Time...">
                    <input type="submit" name="submit" value="Add">
                </form>
            </div>
        </div>
        
        <div id="Scheduled" class="tabcontent">
            
                <h1>MANAGE ESTIMATED TIME PUBLIC</h1>
                <div style="overflow-x:auto;">
                <table align="center">
                    <tr>
                        <th>No</th>
                        <th>Start Location</th> 
                        <th>Finish Location</th>
                        <th>Transportation Mode</th>
                        <th>Departure Time</th>
                        <th>Arrival Time</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${scheduledTravelingTables}" var="item" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td>${item.startLocationName} </td>
                            <td>${item.eventLocationName}</td>
                            <td>${item.scheduledTransportationType}</td>
                            <td>${item.departureDateStr}</td>
                            <td>${item.arrivalDateStr}</td>
                            <td>
                                <a href="editScheduledTravelingTableForm.jsp?unscheduledTravelingId=${item.scheduledTravelingId}" class="button1">Update</a>
                                <a href="deleteScheduledTravelingTable.jsp?unscheduledTravelingId=${item.scheduledTravelingId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                </div>
            
            <br>
            <br>
            <div class="form">
	    	<form action="/action_page.php">
                    <label for="LocationA">Location A</label>	
                    <select class="minimal" id="Locationa" name="Locationa">
                        <option value="rumah">Rumah</option>
                        <option value="kantor_dprd">Kantor DPRD</option>
                        <option value="bandara_banka">Bandara Banka</option>
                        <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
                        <option value="jakarta">Jakarta</option>
                        <option value="tangerang">Tangerang</option>
                    </select>
                    <label for="LocationB">Location B</label>	
                    <select class="minimal" id="Locationb" name="Locationb">
                        <option value="rumah">Rumah</option>
                        <option value="kantor_dprd">Kantor DPRD</option>
                        <option value="bandara_banka">Bandara Banka</option>
                        <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
                        <option value="jakarta">Jakarta</option>
                        <option value="tangerang">Tangerang</option>
                    </select>
                    <label for="fname">Transportaion Mode</label>
                    <select class="minimal">
                        <option>Bus</option>
                        <option>Train</option>
                        <option>Ship</option>
                        <option>Plane</option>
                    </select>
                    <label for="fname">Departure Time</label>
                    <input type="text" id="Dtime" name="departureTime" placeholder="departureTime...">
                    <label for="fname">Arrival Time</label>
                    <input type="text" id="Atime" name="arrivalTime" placeholder="arrivalTime...">
                    <input type="submit">
                </form>
            </div>
        </div>
        </div>
        <script>
            function openTab(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("defaultOpen").click();
        </script>
    </body>
</html>
