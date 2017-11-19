<%-- 
    Document   : request-map
    Created on : Nov 18, 2017, 11:17:48 PM
    Author     : adita
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event"%>
<jsp:useBean id="event" class="Model.Event"></jsp:useBean>
<jsp:setProperty property="*" name="event"></jsp:setProperty>
<!DOCTYPE html>
<html>
  <head>
    <% 
       Event eventChoosen = EventDAO.getEventById(event.getId());
       request.setAttribute("eventChoosen", eventChoosen);
    %>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Directions service</title>
    
    <script src="gmaps.js"></script>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      #floating-panel {
        position: absolute;
        top: 10px;
        left: 10%;
        z-index: 5;
        background-color: #fff;
        padding: 5px;
        border: 1px solid #999;
        text-align: center;
        font-family: 'Roboto','sans-serif';
        line-height: 30px;
        padding-left: 10px;
      }
      .name{
          margin-top:0px;
          margin-bottom:10px;
          font-size:14px;
      }
    </style>
  </head>
  <body>
    <div id="floating-panel">
    <input type="hidden" id="start" value="${eventChoosen.getLatStart()},${eventChoosen.getLngStart()}">
    <input type="hidden" id="end" value="${eventChoosen.getLatEnd()},${eventChoosen.getLngEnd()}">
    <input type="hidden" id="avoidTolls" value="${eventChoosen.isAvoidTolls()}">
    
    <h6 class="name">Start Place: ${eventChoosen.getStartName()}</h6>
    <h6 class="name">End Place: ${eventChoosen.getEndName()}</h6>
    <button id="done">View Route</button>
    </div>
  
    <div id="map"></div>
    <div id="message">Location saved</div>
    <script>
      var markerStart;
      var markerEnd;
      var messagewindow;
      function initMap() {
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer;
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 7,
          center: {lat: -6.914744, lng: 107.609810}
        });
        directionsDisplay.setMap(map);

        messagewindow = new google.maps.InfoWindow({
          content: document.getElementById('message')
        });
        
        var geocoder = new google.maps.Geocoder();;
          
        var onChangeHandler = function() {
          calculateAndDisplayRoute(directionsService, directionsDisplay);
        };
       
        document.getElementById('done').addEventListener('click', onChangeHandler);
      }

      function calculateAndDisplayRoute(directionsService, directionsDisplay) {
        var avoidTolls = document.getElementById('avoidTolls').value;
        directionsService.route({
          origin: document.getElementById('start').value,
          destination: document.getElementById('end').value,
          travelMode: 'DRIVING',
          avoidTolls: false
        }, function(response, status) {
          if (status === 'OK') {
            directionsDisplay.setDirections(response);
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
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDteT4he2sgw-Bkf9mR-kVHg7hl6VGdv4E&callback=initMap">
    </script>
  </body>
</html>
