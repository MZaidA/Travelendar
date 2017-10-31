<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:32:59 PM
    Author     : Cecep Sutisna
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
        <title>Manage Unscheduled Traveling - Travlendar</title>
        <%
            List<UnscheduledTravelingTable> unscheduledTravelingTables = UnscheduledTravelingTableDAO.getAll();
            request.setAttribute("unscheduledTravelingTables", unscheduledTravelingTables);
        %>
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
        <%@include file = "../navbarManage.jsp"%>
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Unscheduled')" id="defaultOpen">Unscheduled</button>
            <button class="tablinks" onclick="openTab(event, 'Scheduled')">Scheduled</button>
        </div>
        <div id="Unscheduled" class="tabcontent">
            <div id="mainPanel" style="overflow-x:hidden;">
                <h1>MANAGE UNSCHEDULED TRAVELING</h1>
                <table>
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
            <div id="mainPanel" style="overflow-x:hidden;">
                <h1>MANAGE ESTIMATED TIME PUBLIC</h1>
                <table>
                    <tr>
                        <th>No</th>
                        <th>Start Location</th> 
                        <th>Finish Location</th>
                        <th>Transportation Mode</th>
                        <th>Departure Time</th>
                        <th>Arrival Time</th>
                        <th>Action</th>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Rumah</td>
                        <td>Kantor DPRD</td>
                        <td>Bus</td>
                        <td>07:00</td>
                        <td>10:00</td>
                        <td>
                            <a href="updateEstimatedTimePublic.jsp" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Rumah</td>
                        <td>Kantor DPRD</td>
                        <td>Train</td>
                        <td>07:00</td>
                        <td>10:00</td>
                        <td>
                            <a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a>
                        </td>
                    </tr>
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
