<%-- 
Document   : index.jsp
Created on : Sep 21, 2017, 9:51:43 PM
Author     : GLDV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Travlendar</title>
        <jsp:include page="../head.jsp" />
        <link href="../Assets/css/simplePagination.css" type="text/css" rel="stylesheet"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    </head>
    <body>
        <%
            String departureLocation = request.getParameter("departureLocation");
            String eventLocation = request.getParameter("eventLocation");
            String username=(String)session.getAttribute("username");
        if(username == null)
        {
            response.sendRedirect("../Login_SignUp");
        }
        %>
        <jsp:include page="../header.jsp" />
        <div class="row">
            <div class="navbar">
                <ul>
                    <li><a class="selected" href="../Home"><img src="../Assets/icon/home.png" width="28" height=28 style="float:left;"><div class="text-navbar">Home</div></a></li>
                    <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
                    <li><a href="../Create_Event"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Create Event</div></a></li>
                </ul>
            </div><!--Class Navbar-->
            <div class="column content" id="content">
                <h4> Route </h4>
                
                <div id="map"></div>
            </div>
        </div>
    <script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 13,
          center: {lat: -6.9168957, lng: 107.6192613}
        });
        
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer({
          draggable: true,
          map: map,
          panel: document.getElementById('right-panel')
        });

        directionsDisplay.addListener('directions_changed', function() {
          computeTotalDistance(directionsDisplay.getDirections());
        });

        displayRoute('<%=departureLocation%>', '<%=eventLocation%>', directionsService,
            directionsDisplay);
      }

      function displayRoute(origin, destination, service, display) {
        service.route({
          origin: origin,
          destination: destination,
          //waypoints: [
          //            {location: 'Bogor'}, {location: 'Tasikmalaya'}
          //           ],
          //[<%
          //for(int i = 0;i < listWaypoints.size();i++){
          //    out.println("{location: '"+listWaypoint.get(i).getLocation()+"'},");
          //}
          //%>]
          travelMode: 'DRIVING',
          avoidTolls: true
        }, function(response, status) {
          if (status === 'OK') {
            display.setDirections(response);
          } else {
            alert('Could not display directions due to: ' + status);
          }
        });
      }

      function computeTotalDistance(result) {
        var total = 0;
        var myroute = result.routes[0];
        for (var i = 0; i < myroute.legs.length; i++) {
          total += myroute.legs[i].distance.value;
        }
        total = total / 1000;
        document.getElementById('total').innerHTML = total + ' km';
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmwISHnFG6x8zCNn0tjbDkRhooEzs_TKk&callback=initMap">
    </script>
    </body>
</html>