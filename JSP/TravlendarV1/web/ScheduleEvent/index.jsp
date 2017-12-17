<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, DAO.EventDAO" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="../head.jsp" />
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,500' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-1.12.3.min.js" integrity="sha256-aaODHAgvwQW1bFOGXMeX+pC4PZIPsvn2h1sArYOhgXQ=" crossorigin="anonymous"></script>
    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://rawgit.com/FezVrasta/bootstrap-material-design/master/dist/js/material.min.js"></script>
    <script type="text/javascript" src="http://momentjs.com/downloads/moment-with-locales.min.js"></script>
    <script type="text/javascript" src="../Assets/datetimepick/jquery/bootstrap-material-datetimepicker.js"></script>
    <link rel="stylesheet" href="https://rawgit.com/FezVrasta/bootstrap-material-design/master/dist/css/material.min.css" />
    <link rel="stylesheet" href="../Assets/css/bootstrap-material-design.min.css"/>
    <link rel="stylesheet" href="../Assets/css/bootstrap-material-datetimepicker.css" />
    <style>
        #start,
      #end {
        width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
      }
    </style>
    
    <%   
        String username=(String)session.getAttribute("username");  
    %> 

    <script>
    $(document).ready(function(){
            $(".notfirst").click(function() {
                    $("#demo").hide(10);
                    document.getElementById("sli").disabled=true;
                });
    });
    $(document).ready(function(){
            $(".first").click(function() {
                    $("#demo").show(10)
                document.getElementById("sli").disabled=false;
            });
    });
    $(document).ready(function(){
            $(".unsch").click(function() {
                    $("#scheduled").hide(10);
                    $("#unscheduled").show(10);
                });
    });
    $(document).ready(function(){
            $(".sch").click(function() {
                $("#unscheduled").hide(10);
                    $("#scheduled").show(10);
            });
    });
    </script>
    <title>Travelendar</title>
</head>

<body>
    
    
<jsp:include page="../header.jsp"/>

<div class="row">
    <div class="navbar">
        <ul>
          <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li class="selected"><a href="../ScheduleEvent"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Schedule Event Form</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <h1>Create a New Event</h1>

        <div class="form">
        <form action="addagenda.jsp">
            <input type="hidden" id="eventId" name="eventId"/> <!--Untuk Editing-->
            <input type="hidden" id="username" name="username" value=<%out.print(username);%>>
            <label for="fname">Event Name</label>
            <input type="text" id="eventName" name="eventName" placeholder="..." required/>
            <input type="radio" class="notfirst" name="firstornot" checked>Not first Event</input>
            <input type="radio" class="first" name="firstornot" required>First Event</input>
            <br/><br/>
            <div id="demo" style="display:none">
            <!--LOCATION GMAPS -->
                <label for="stLoc">Start Location</label>
                <div class="form-group input-group">
                    <input name="startLoc" onchange='getSuggest()' type="text" id="start"  placeholder="Search location"/>
                </div>
            </div>  
            </br>
            <label for="fname">End Location</label>
            <input name="endLoc" onchange='getSuggest()' type="text" id="end" placeholder="Search location">
            <br/>
            <label for="fname">Arrival Date & Time</label>
            <input onchange='getSuggest()' type="text" name="arrivalTime" id="date-start"  placeholder="Click Here" onchange='getUnsSuggest()'/>
            <br/>
            <label for="fname">End Date & Time</label>
            <input onchange='getSuggest()' type="text" name="endDate" id="date-end"  placeholder="Click Here" />
            </br>
            <label for="stLoc">Transportation</label>
            <select required id="transport" name="transport">
                <option value="0">Isi Lokasi dan Waktu Event terlebih Dahulu</option>
            </select>
            <br></br>
            <br/>
            <input type="submit" value="Submit"/>
        </form>
<!--            <div class="form-group input-group">
                <div class="input-group-btn">
                    <button id="done">
                        View Route
                    </button>
                    <button id="With-Tolls">
                        View Route Via Tolls
                    </button>
                </div>
            </div>-->
            <form action="save-direction.jsp">
                <input type="hidden" id="startName" name="startName"/>
                <input type="hidden" id="latStart" name="latStart"/>
                <input type="hidden" id="lngStart" name="lngStart"/>
                <input type="hidden" id="endName" name="endName"/>
                <input type="hidden" id="latEnd" name="latEnd"/>
                <input type="hidden" id="lngEnd" name="lngEnd"/>
                <input type="hidden" id="distance" name="distance"/>
                <input type="hidden" id="avoidTolls" name="avoidTolls"/>
            </form>
           <div id="map"></div>

            
        </div>
    </div>
</div>

<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDteT4he2sgw-Bkf9mR-kVHg7hl6VGdv4E&libraries=places&callback=initMap"></script>

<script type="text/javascript">
		$(document).ready(function()
		{
                        $('#date-end').bootstrapMaterialDatePicker({ weekStart : 0, format: 'DD/MM/YYYY HH:mm' });
                        $('#date-start').bootstrapMaterialDatePicker({ weekStart : 0, format: 'DD/MM/YYYY HH:mm' }).on('change', function(e, date)
                        {
                        $('#date-end').bootstrapMaterialDatePicker('setMinDate', date);
                        });
			$.material.init()
		});
</script>

<script>
    // This example requires the Places library. Include the libraries=places
        // parameter when you first load the API. For example:
        // <script src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&libraries=places">

        function initMap() {
          var map = new google.maps.Map(document.getElementById('map'), {
            mapTypeControl: false,
            center: {lat: -6.9168957, lng: 107.61926130000006},
            zoom: 13,
            gestureHandling: 'greedy'
          });

          new AutocompleteDirectionsHandler(map);
        }

         /**
          * @constructor
         */
        function AutocompleteDirectionsHandler(map) {
          this.map = map;
          this.originPlaceId = null;
          this.destinationPlaceId = null;
          this.travelMode = 'DRIVING';
          var originInput = document.getElementById('start');
          var destinationInput = document.getElementById('end');
//          var modeSelector = document.getElementById('mode-selector');
          this.directionsService = new google.maps.DirectionsService;
          this.directionsDisplay = new google.maps.DirectionsRenderer({
          draggable: true,
          map: map
            });
            var direct1 = this.directionsDisplay;
            this.directionsDisplay.addListener('directions_changed', function(){
          showToBox(direct1.getDirections());
      });
//          this.directionsDisplay.addListener('directions_changed', function(){
//          computeTotalDistance(this.directionsDisplay.getDirections());
//        });
          this.directionsDisplay.setMap(map);

          var originAutocomplete = new google.maps.places.Autocomplete(
              originInput, {placeIdOnly: true});
          var destinationAutocomplete = new google.maps.places.Autocomplete(
              destinationInput, {placeIdOnly: true});

//          this.setupClickListener('changemode-walking', 'WALKING');
//          this.setupClickListener('changemode-transit', 'TRANSIT');
//          this.setupClickListener('changemode-driving', 'DRIVING');

          this.setupPlaceChangedListener(originAutocomplete, 'ORIG');
          this.setupPlaceChangedListener(destinationAutocomplete, 'DEST');

//          this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(originInput);
//          this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(destinationInput);
//          this.map.controls[google.maps.ControlPosition.TOP_LEFT].push(modeSelector);
        }

        // Sets a listener on a radio button to change the filter type on Places
        // Autocomplete.
//        AutocompleteDirectionsHandler.prototype.setupClickListener = function(id, mode) {
//          var radioButton = document.getElementById(id);
//          var me = this;
//          radioButton.addEventListener('click', function() {
//            me.travelMode = mode;
//            me.route();
//          });
//        };

        AutocompleteDirectionsHandler.prototype.setupPlaceChangedListener = function(autocomplete, mode) {
          var me = this;
          autocomplete.bindTo('bounds', this.map);
          autocomplete.addListener('place_changed', function() {
            var place = autocomplete.getPlace();
            if (!place.place_id) {
              window.alert("Please select an option from the dropdown list.");
              return;
            }
            if (mode === 'ORIG') {
              me.originPlaceId = place.place_id;
            } else {
              me.destinationPlaceId = place.place_id;
            }
            me.route();
          });

        };

        AutocompleteDirectionsHandler.prototype.route = function() {
          if (!this.originPlaceId || !this.destinationPlaceId) {
            return;
          }
          var me = this;

          this.directionsService.route({
            origin: {'placeId': this.originPlaceId},
            destination: {'placeId': this.destinationPlaceId},
            travelMode: this.travelMode
          }, function(response, status) {
            if (status === 'OK') {
              me.directionsDisplay.setDirections(response);
            } else {
              window.alert('Directions request failed due to ' + status);
            }
          });
        };
        
        function showToBox(result){
            var total = 0;
            var myroute = result.routes[0];
            for (var i = 0; i < myroute.legs.length; i++) {
              total += myroute.legs[i].distance.value;
            }
            total = total / 1000;
            console.log(total);
            console.log(myroute.legs[0].start_address);
            console.log(myroute.legs[0].start_location.lat());
            console.log(myroute.legs[0].start_location.lng());

            console.log(myroute.legs[myroute.legs.length-1].end_address);
            console.log(myroute.legs[myroute.legs.length-1].end_location.lat());
            console.log(myroute.legs[myroute.legs.length-1].end_location.lng());

            document.getElementById("startName").value=myroute.legs[0].start_address;
            document.getElementById("start").value=myroute.legs[0].start_address;
            document.getElementById("latStart").value=myroute.legs[0].start_location.lat();
            document.getElementById("lngStart").value=myroute.legs[0].start_location.lng();

            document.getElementById("endName").value=myroute.legs[myroute.legs.length-1].end_address;
            document.getElementById("end").value=myroute.legs[myroute.legs.length-1].end_address;
            document.getElementById("latEnd").value=myroute.legs[myroute.legs.length-1].end_location.lat();
            document.getElementById("lngEnd").value=myroute.legs[myroute.legs.length-1].end_location.lng();

            document.getElementById("distance").value = total;
        }
    
//                var markerStart;
//                var markerEnd;
//                var messagewindow;
//                function initMap() {
//                    var directionsService = new google.maps.DirectionsService;
//                    var directionsDisplay = new google.maps.DirectionsRenderer;
//                    var avoidToll = true;
//                    var map = new google.maps.Map(document.getElementById('map'), {
//                        zoom: 13,
//                        center: {lat: -6.914744, lng: 107.609810}
//                    });
//                    //AutoComplete
//                    var inputStart = document.getElementById('start');
//                    var inputEnd = document.getElementById('end');
//                    var searchBoxStart = new google.maps.places.SearchBox(inputStart);
//                    var searchBoxEnd = new google.maps.places.SearchBox(inputEnd);
//
//                    map.addListener('bounds_changed', function() {
//                        searchBoxStart.setBounds(map.getBounds());
//                    });
//
//                    map.addListener('bounds_changed', function() {
//                        searchBoxEnd.setBounds(map.getBounds());
//                    });
//
//                    //--- end of auto complete --
//                    directionsDisplay.setMap(map);
//
//                    messagewindow = new google.maps.InfoWindow({
//                        content: document.getElementById('message')
//                    });
//
//                    var geocoder = new google.maps.Geocoder();
//
//                    var onChangeHandler = function() {
//                        avoidToll = true;
//                        document.getElementById("avoidTolls").value=avoidToll;
//                        calculateAndDisplayRoute(directionsService, directionsDisplay, avoidToll);
//                        geocodeAddressStart(geocoder, map);
//                        geocodeAddressEnd(geocoder, map);
//                    };
//
//                    var onChangeHandlerTolls = function() {
//                        avoidToll = false;
//                        document.getElementById("avoidTolls").value=avoidToll;
//                        calculateAndDisplayRoute(directionsService, directionsDisplay, avoidToll);
//                        geocodeAddressStart(geocoder, map);
//                        geocodeAddressEnd(geocoder, map);
//                    };
//                    document.getElementById('done').addEventListener('click', onChangeHandler);
//                    document.getElementById('With-Tolls').addEventListener('click', onChangeHandlerTolls);
//                }
//
//                function geocodeAddressStart(geocoder, resultsMap) {
//                    var address = document.getElementById('start').value;
//                    geocoder.geocode({'address': address}, function(results, status) {
//                        if (status === 'OK') {
//                            resultsMap.setCenter(results[0].geometry.location);
//                            markerStart = new google.maps.Marker({
//                              position: results[0].geometry.location
//                            });
//                            document.getElementById("latStart").value=markerStart.getPosition().lat();
//                            document.getElementById("lngStart").value=markerStart.getPosition().lng();
//                        } else {
//                            alert('Geocode was not successful for the following reason: ' + status);
//                          }
//                    });
//                }
//
//                function geocodeAddressEnd(geocoder, resultsMap) {
//                    var address = document.getElementById('end').value;
//                    geocoder.geocode({'address': address}, function(results, status) {
//                        if (status === 'OK') {
//                            resultsMap.setCenter(results[0].geometry.location);
//                            markerEnd = new google.maps.Marker({
//                              position: results[0].geometry.location
//                            });
//                            document.getElementById("latEnd").value=markerEnd.getPosition().lat();
//                            document.getElementById("lngEnd").value=markerEnd.getPosition().lng();
//                        } else {
//                            alert('Geocode was not successful for the following reason: ' + status);
//                        }
//                    });
//                }
//
//                function calculateAndDisplayRoute(directionsService, directionsDisplay, toll) {
//                    directionsService.route({
//                        origin: document.getElementById('start').value,
//                        destination: document.getElementById('end').value,
//                        travelMode: 'DRIVING',
//                        avoidTolls: toll
//                    }, function(response, status) {
//                        if (status === 'OK') {
//                            directionsDisplay.setDirections(response);
//                            //get distance
//                            var distanceKM = response.routes[0].legs[0].distance.value/1000;
//                            document.getElementById("distance").value=distanceKM;
//                        } else {
//                            window.alert('Directions request failed due to ' + status);
//                        }
//                    });
//                    var start = document.getElementById('start').value;
//                    var end = document.getElementById('end').value;
//                    document.getElementById("startName").value=start;
//                    document.getElementById("endName").value=end;
//                }
            </script>

<script>
function getUnsSuggest(){
        var v1 = document.myform.eventLocationId.value;
        var v2 = document.myform.arrivalTime.value;
        var d3 = document.myform.startLocationId;
        if(d3.disabled) {
            v3 = "";
        }
        else {
            v3 = d3.value;
        }
        //alert(d3.disabled);
        var url="unsSuggest.jsp";
//			var value=$(from).val();
//			if (v1 == "" || v2 == "") {
//				document.getElementById("uns").innerHTML = "";
//				return;
//			} else {
        if (window.XMLHttpRequest) {
                // code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
        } else {
                // code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                        document.getElementById("uns").innerHTML = this.responseText;
                        //alert("RES: " + this.responseText + " " + v1);
                }
        };
        xmlhttp.open("GET",url+"?loc="+v1+"&arrTime="+v2+"&firstId="+v3,true);
        xmlhttp.send();
}
        function getSuggest() {
                    var v1 = document.getElementById("start").value;
                    var v2 = document.getElementById("end").value;
                    var v3 = document.getElementById("dateTime1").value;
                    var v4 = document.getElementById("dateTime2").value;
                    if(v1!="" && v2!="" && v3!="" && v4!="") {
                        var directionsService = new google.maps.DirectionsService;
                        var directionsDisplay = new google.maps.DirectionsRenderer;
                        var arrM = parseInt(v3.substr(0,2));
                        var arrD = parseInt(v3.substr(3,2));
                        var arrY = parseInt(v3.substr(6,4));
                        var arrHH = parseInt(v3.substr(11,2));
                        var arrMM = parseInt(v3.substr(14,2));
                        
                        var depM = parseInt(v4.substr(0,2));
                        var depD = parseInt(v4.substr(3,2));
                        var depY = parseInt(v4.substr(6,4));
                        var depHH = parseInt(v4.substr(11,2));
                        var depMM = parseInt(v4.substr(14,2));
                        
                        var arrDate = new Date(arrY, arrM-1, arrD, arrHH, arrMM);
                        var depDate = new Date(depY, depM-1, depD, depHH, depMM);
                        suggest(directionsService, directionsDisplay, arrDate);
                    }
                }
                function suggest(directionsService, directionsDisplay, arrDate) {
                    var transSuggest = document.getElementById("transport");
                    var length = transSuggest.options.length;
                    for (i = 0; i < length; i++) {
                      transSuggest.options[i] = null;
                    }
                    directionsService.route({
                        origin: document.getElementById('start').value,
                        destination: document.getElementById('end').value,
                        travelMode: 'DRIVING',
                        avoidTolls: false
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                            //get distance
                            var dur = response.routes[0].legs[0].duration.value;
                            var depart = new Date(arrDate-dur*1000);
//                            alert(depart.getMinutes());
                            transSuggest.append(new Option("Mobil, Berangkat: "+depart, "DRIVING,"+dur));
//                            transSuggest.append(new Option("Mobil, Berangkat: "+depart.getHours()+":"+depart.getMinutes(), 1));
                            
                        }
                    });
                    directionsService.route({
                        origin: document.getElementById('start').value,
                        destination: document.getElementById('end').value,
                        travelMode: 'DRIVING',
                        avoidTolls: true
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                            //get distance
                            var dur = response.routes[0].legs[0].duration.value;
                            var depart = new Date(arrDate-dur*1000);
                            transSuggest.append(new Option("Motor, Berangkat: "+depart, "MOTOR,"+dur));
//                            transSuggest.append(new Option("Motor, Berangkat: "+depart.getHours()+":"+depart.getMinutes(), 2));
                            
                        }
                    });
                    directionsService.route({
                        origin: document.getElementById('start').value,
                        destination: document.getElementById('end').value,
                        travelMode: 'WALKING',
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                            //get distance
                            var dur = response.routes[0].legs[0].duration.value;
                            var depart = new Date(arrDate-dur*1000);
                            transSuggest.append(new Option("Jalan Kaki, Berangkat: "+depart, "WALKING,"+dur));
//                            transSuggest.append(new Option("Jalan Kaki, Berangkat: "+depart.getHours()+":"+depart.getMinutes(), 3));
                        }
                    });
                    directionsService.route({
                        origin: document.getElementById('start').value,
                        destination: document.getElementById('end').value,
                        travelMode: 'BICYCLING',
                    }, function(response, status) {
                        if (status === 'OK') {
                            directionsDisplay.setDirections(response);
                            //get distance
                            var dur = response.routes[0].legs[0].duration.value;
                            var depart = new Date(arrDate-dur*1000);
                            transSuggest.append(new Option("Sepeda, Berangkat: "+depart, "BICYCLING,"+dur));
//                            transSuggest.append(new Option("Sepeda, Berangkat: "+depart.getHours()+":"+depart.getMinutes(), 4));
                        }
                    });
                    if(transSuggest.options.length==0) {
                        transSuggest.append(new Option("Suggestion Kendaraan tidak Ditemukan", 0));
                    }
                    var start = document.getElementById('start').value;
                    var end = document.getElementById('end').value;
                    document.getElementById("startName").value=start;
                    document.getElementById("endName").value=end;
                }
</script>
</body>
</html>
