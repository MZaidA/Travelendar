<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:32:59 PM
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
        <title>Manage Private Traveling - Travlendar</title>
        <%
            List<PrivateTransportationTraveling> privateTransportationTravelings = PrivateTransportationTravelingDAO.getAll();
            request.setAttribute("privateTransportationTravelings", privateTransportationTravelings);
        %>
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
        <%@include file = "../navbarManage.jsp"%>
        
           
        <div id="mainPanel" style="overflow-x:hidden;">
            <div class="tab">
                <button class="tablinks" onclick="openTab(event, 'Private')" id="defaultOpen">Private</button>
                <button class="tablinks" onclick="openTab(event, 'Public')">Public</button>
            </div>
            <br/>
        <div id="Private" class="tabcontent">
            
                <h1>MANAGE PRIVATE TRANSPORTATION TRAVELING</h1>
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
                    <c:forEach items="${privateTransportationTravelings}" var="item" varStatus="loop">
                        <tr>
                            <td>${loop.index+1}</td>
                            <td>${item.locationName} </td>
                            <td>${item.locLocationName}</td>
                            <td>${item.privateType}</td>
                            <td>${item.travelingTime}</td>
                            <td>
                                <a href="editEstimatedTimePrivateForm.jsp?privateTravelingId=${item.privateTravelingId}" class="button1">Update</a>
                                <a href="deleteEstimatedTimePrivate.jsp?privateTravelingId=${item.privateTravelingId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
                </div>
            <br>
            <br>
            <div class="form">
                <form action="addEstimatedTimePrivate.jsp">
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
                    <input type="submit" name="submit" value="Add">
                </form>
            </div>
        </div>
        
        <div id="Public" class="tabcontent">
                <h1>MANAGE ESTIMATED TIME PUBLIC</h1>
                <div style="overflow-x: auto;">
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
                    <input type="text" id="Dtime" name="departureTime" placeholder="departureTime..." required>
                    <label for="fname">Arrival Time</label>
                    <input type="text" id="Atime" name="arrivalTime" placeholder="arrivalTime..." required>
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
