<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LocationDAO, Model.Location, java.util.*, DAO.SuggestionDAO, Model.UnscheduledTravelingTable" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
    <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBmLiRLe7nQvc6KDoomu7a-YFSATYVlKSU"></script>
    
    <link rel="stylesheet" href="../Assets/css/Style.css"/>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/> <!--http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css *** ../Assets/datetimepick/dist/jquery-ui.css-->
    <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.css"/> <!-- link untuk memanggil timepicker -->
    
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
    
    <%
      String userName = request.getParameter("userName");
    %>
<% 
    List<Location> locations = LocationDAO.getAll();
    request.setAttribute("locations", locations);
   
    //request.setAttribute("uSuggestions", uSuggestions);
%>
<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">
</div>

<div class="row">
    <div class="navbar">
        <ul>
          <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li class="selected"><a href="../CreateAgenda"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Event</div></a></li>
        </ul>
    </div><!--Class Navbar-->

    <div class="column content">
    <h1>Create a New Event</h1>

        <div class="form">
            <label for="fname">Event Name</label>
            <input type="text" id="eventName" name="eventName" placeholder="..."/>
            <input type="radio" class="notfirst" name="firstornot" checked>Not first Event</input>
            <input type="radio" class="first" name="firstornot">First Event</input>
            <br/><br/>
            <div id="demo" style="display:none">
            <!--LOCATION GMAPS -->
                <label for="stLoc">Start Location</label>
                <div class="form-group input-group">
                    <input type="text" id="start" class="form-control" placeholder="Search location"/>
                </div>
            </div>  
            </br>

<<<<<<< HEAD
            <label for="fname">End Location</label>
            <div class="form-group input-group">
                <input type="text" id="end" class="form-control" placeholder="Search location">
                <div class="input-group-btn">
                    <button id="done">
                        View Route
                    </button>
                    <button id="With-Tolls">
                        View Route Via Tolls
                    </button>
                </div>
            </div>
            </br>
=======
<div class="form">
    <form name="myform" action="addagenda.jsp">
    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="eventName" placeholder="..."/>
    <input type="radio" class="notfirst" name="firstornot" checked>Not first Event</input>
    <input type="radio" class="first" name="firstornot">First Event</input>
    <br/><br/>
    <div id="demo" style="display:none">
    
    
    <label for="stLoc">Start Location</label>
	<!-- DROPDOWN <select id="sli" class="classic" name="startLocationId" onclick='getUnsSuggest()' disabled>
            <option value='0'>Pilih Lokasi Event</option>
            <c:forEach items="${locations}" var="item">
            <option value="${item.locationId}">${item.locationName}</option>
            </c:forEach>
	 </select> -->
        <input type="text" id="loc" name="Location" placeholder="..."/>
    </div>
    <label for="fname">Start Location</label>
    <div class="form-group input-group">
        <input type="text" id="search_location" class="form-control" placeholder="Search location">
        <div class="input-group-btn">
            <button class="btn btn-default get_map" type="submit">
                Locate
            </button>
        </div>
    </div>
    </br>
    <label for="fname">End Location</label>
    <div class="form-group input-group">
        <input type="text" id="search_location" class="form-control" placeholder="Search location">
        <div class="input-group-btn">
            <button class="btn btn-default get_map" type="submit">
                Locate
            </button>
        </div>
    </div>
    </br>
    
<script>
var geocoder;
var map;
var marker;
>>>>>>> 7c05f0d45ff65d0fa072288c860d03d77d36b846

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
                    var inputStart = document.getElementById('start');
                    var inputEnd = document.getElementById('end');
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
<<<<<<< HEAD

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
            <script async defer
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDteT4he2sgw-Bkf9mR-kVHg7hl6VGdv4E&libraries=places&callback=initMap">
            </script>

            </br>
            <label for="stLoc">Transportation</label>
            <input type="text" id="tra" name="Transportation" placeholder="..."/>
            <br/>

            <label for="fname">Arrival Date & Time</label>
            <input type="text" name="arrivalTime" id="dateTime1" placeholder="Click Here" onchange='getUnsSuggest()'/>
=======
            }
        });
    });
});
</script>
        <!-- display google map -->
    <div id="geomap"></div>
    </br>
    <label for="stLoc">Transportation</label>
    <input type="text" id="tra" name="Transportation" placeholder="..."/>
    <br/>
    
    <label for="fname">Arrival Date & Time</label>
    <input type="text" name="arrivalTime" id="dateTime1" placeholder="Click Here" onchange='getUnsSuggest()'/>
 
    <br/>
    <label for="fname">End Date & Time</label>
    <input type="text" name="endDate" id="dateTime2" placeholder="Click Here" />
    <br />
    
    <!-- Search Long Lat Location 
    <div class="form-group input-group">
        <input type="text" id="search_location" class="form-control" placeholder="Search location">
        <div class="input-group-btn">
            <button class="btn btn-default get_map" type="submit">
                Locate
            </button>
        </div>
    </div>
    <input type="text" class="search_latitude" placeholder="latitude"/>
    <input type="text" class="search_longitude" placeholder="longitude"/>
    -->
    
    <input type="submit" value="Submit"/>
  </form>
>>>>>>> 7c05f0d45ff65d0fa072288c860d03d77d36b846

            <br/>
            <label for="fname">End Date & Time</label>
            <input type="text" name="endDate" id="dateTime2" placeholder="Click Here" />
            <br />

            <input type="submit" value="Submit"/>

        </div>
    </div>
</div>
<div class="footer">
Travlender 2017
</div>



<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.js"></script> <!-- link untuk memanggil timepicker -->
<script type="text/javascript" src="../Assets/datetimepick/dist/i18n/jquery-ui-timepicker-addon-i18n.min.js"></script> <!-- link untuk memanggil timepicker -->
<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-sliderAccess.js"></script> <!-- link untuk memanggil timepicker -->


<script>
    var myControl=  {
            create: function(tp_inst, obj, unit, val, min, max, step){
                    $('<input class="ui-timepicker-input" value="'+val+'" style="width:50%">')
                        .appendTo(obj)
                        .spinner({
                                min: min,
                                max: max,
                                step: step,
                                change: function(e,ui){ // key events
                                                // don't call if api was used and not key press
                                                if(e.originalEvent !== undefined)
                                                        tp_inst._onTimeChange();
                                                tp_inst._onSelectHandler();
                                        },
                                spin: function(e,ui){ // spin events
                                                tp_inst.control.value(tp_inst, obj, unit, ui.value);
                                                tp_inst._onTimeChange();
                                                tp_inst._onSelectHandler();
                                        }
                        });
                    return obj;
            },
            options: function(tp_inst, obj, unit, opts, val){
                    if(typeof(opts) == 'string' && val !== undefined)
                            return obj.find('.ui-timepicker-input').spinner(opts, val);
                    return obj.find('.ui-timepicker-input').spinner(opts);
            },
            value: function(tp_inst, obj, unit, val){
                    if(val !== undefined)
                            return obj.find('.ui-timepicker-input').spinner('value', val);
                    return obj.find('.ui-timepicker-input').spinner('value');
            }
};

$('#dateTime1').datetimepicker({
	controlType: myControl
});
$('#dateTime2').datetimepicker();
</script>
<script>
    function showBandara(value){
        if(value == "Pesawat"){
            document.getElementById("bandara").style.display ='block';
        }
        else{
            document.getElementById("bandara").style.display ='none';
        }
    }
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
</script>
</body>
</html>
