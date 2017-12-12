<%-- 
Document   : index.jsp
Created on : Sep 21, 2017, 9:51:43 PM
Author     : myLIFE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="DAO.UserDAO, Model.User, java.util.*"%>

<%   
String username=(String)session.getAttribute("username");
User us = UserDAO.get(username);
%> 
<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<jsp:include page="../head.jsp" />

<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>

<jsp:include page="../header.jsp" />

<div class="row">
<div class="navbar">
    <ul>
      <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
      <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
      <li><a href="../ScheduleEvent"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Schedule Event Form</div></a></li>
      <li class="selected"><a href="../PreferenceScreen"><img src="../Assets/icon/settings.png" width="28" height="28" style="float:left;"><div class="text-navbar">Preference</div></a></li>
    </ul>
</div><!--Class Navbar-->

<div class="column content">
<h1> Preference </h1>
<br/>
    <div class="form">
        <form action="editAccount.jsp">
                <input type="text" id="username" name="username" value=<%out.print(username);%> /> <!--Untuk Editing-->
                <label for="fname">Home Address</label>
                <input type="text" id="home" name="home" placeholder="..." value="<%=us.getHome()%>"/>
                <br/>
                <label for="fname">Work Address</label>
                <input type="text" id="workplace" name="workplace" placeholder="..." value="<%=us.getWorkplace()%>"/>
                <br/>
                <label for="fname">Maximum walking distance (in Kilometer)</label>
                <br/>
                <select id="walking" name="maxWalking" class="select minimal" value="<%=us.getMaxWalking()%>">
                <option value="0">0 Km</option>
                <option value="1">1 Km</option>
                <option value="2">2 Km</option>
                <option value="3">3 Km</option>
                <option value="4">4 Km</option>
                <option value="5">5 Km</option>
                <option value="6">6 Km</option>
                <option value="7">7 Km</option>
                <option value="8">8 Km</option>
                <option value="9">9 Km</option>
                <option value="10">10 Km</option>
                </select >
                <br/><br/>
                <input type="submit" value="Submit"/>
        </form>
    </div>
<div id="map" style="display: none;"></div>
</div>
<script async defer
src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDteT4he2sgw-Bkf9mR-kVHg7hl6VGdv4E&libraries=places&callback=initMap">
</script>
<script>
                var markerStart;
                var markerEnd;
                var messagewindow;
                function initMap() {
                    var directionsService = new google.maps.DirectionsService;
                    var directionsDisplay = new google.maps.DirectionsRenderer;
                    var avoidToll = true;
                    var map = new google.maps.Map(document.getElementById('map'), {
                        zoom: 13,
                        center: {lat: -6.914744, lng: 107.609810}
                    });
                    //AutoComplete
                    var inputStart = document.getElementById('HomeAddress');
                    var inputEnd = document.getElementById('WorkAddress');
                    var searchBoxStart = new google.maps.places.SearchBox(inputStart);
                    var searchBoxEnd = new google.maps.places.SearchBox(inputEnd);

                    map.addListener('bounds_changed', function() {
                        searchBoxStart.setBounds(map.getBounds());
                    });

                    map.addListener('bounds_changed', function() {
                        searchBoxEnd.setBounds(map.getBounds());
                    });

                    //--- end of auto complete --
                    directionsDisplay.setMap(map);

                    messagewindow = new google.maps.InfoWindow({
                        content: document.getElementById('message')
                    });

                    var geocoder = new google.maps.Geocoder();

                    var onChangeHandler = function() {
                        avoidToll = true;
                        document.getElementById("avoidTolls").value=avoidToll;
                        calculateAndDisplayRoute(directionsService, directionsDisplay, avoidToll);
                        geocodeAddressStart(geocoder, map);
                        geocodeAddressEnd(geocoder, map);
                    };

                    var onChangeHandlerTolls = function() {
                        avoidToll = false;
                        document.getElementById("avoidTolls").value=avoidToll;
                        calculateAndDisplayRoute(directionsService, directionsDisplay, avoidToll);
                        geocodeAddressStart(geocoder, map);
                        geocodeAddressEnd(geocoder, map);
                    };
                    document.getElementById('done').addEventListener('click', onChangeHandler);
                    document.getElementById('With-Tolls').addEventListener('click', onChangeHandlerTolls);
                }

                function geocodeAddressStart(geocoder, resultsMap) {
                    var address = document.getElementById('start').value;
                    geocoder.geocode({'address': address}, function(results, status) {
                        if (status === 'OK') {
                            resultsMap.setCenter(results[0].geometry.location);
                            markerStart = new google.maps.Marker({
                              position: results[0].geometry.location
                            });
                            document.getElementById("latStart").value=markerStart.getPosition().lat();
                            document.getElementById("lngStart").value=markerStart.getPosition().lng();
                        } else {
                            alert('Geocode was not successful for the following reason: ' + status);
                          }
                    });
                }

                function geocodeAddressEnd(geocoder, resultsMap) {
                    var address = document.getElementById('end').value;
                    geocoder.geocode({'address': address}, function(results, status) {
                        if (status === 'OK') {
                            resultsMap.setCenter(results[0].geometry.location);
                            markerEnd = new google.maps.Marker({
                              position: results[0].geometry.location
                            });
                            document.getElementById("latEnd").value=markerEnd.getPosition().lat();
                            document.getElementById("lngEnd").value=markerEnd.getPosition().lng();
                        } else {
                            alert('Geocode was not successful for the following reason: ' + status);
                        }
                    });
                }

                function calculateAndDisplayRoute(directionsService, directionsDisplay, toll) {
                    directionsService.route({
                        origin: document.getElementById('start').value,
                        destination: document.getElementById('end').value,
                        travelMode: 'DRIVING',
                        avoidTolls: toll
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                            //get distance
                            var distanceKM = response.routes[0].legs[0].distance.value/1000;
                            document.getElementById("distance").value=distanceKM;
                        } else {
                            window.alert('Directions request failed due to ' + status);
                        }
                    });
                    var start = document.getElementById('start').value;
                    var end = document.getElementById('end').value;
                    document.getElementById("startName").value=start;
                    document.getElementById("endName").value=end;
                }
</script>
</body>
</html>