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
           <li><a href="../ManageLocation"><img src="../Assets/icon/manage.png" width="28" height="28" style="float:left;"><div class="text-navbar">Manage</div></a></li>
        </ul>
    </div><!--Class Navbar-->

<div class="column content">
<h1>Create a New Event</h1>


<div class="form">
    <form name="myform" action="addagenda.jsp">
    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="eventName" placeholder="..."/>
    <input type="radio" class="notfirst" name="firstornot" checked>Not first Event</input>
    <input type="radio" class="first" name="firstornot">First Event</input>
    <br/>
    <div id="demo" style="display:none">
        
    <label for="stLoc">Start Location</label>
	<select id="sli" class="classic" name="startLocationId" onclick='getUnsSuggest()' disabled>
            <option value='0'>Pilih Lokasi Event</option>
            <c:forEach items="${locations}" var="item">
            <option value="${item.locationId}">${item.locationName}</option>
            </c:forEach>
	 </select>
    </div>
    <label for="fname">Location</label>
    <select onchange='getUnsSuggest()' class="classic" name="eventLocationId" >
            <option value='0'>Pilih Lokasi Event</option>
            <c:forEach items="${locations}" var="item">
            <option value="${item.locationId}">${item.locationName}</option>
            </c:forEach>
    </select>
    
    <label for="fname">Arrival Date & Time</label>
    <input type="text" name="arrivalTime" id="dateTime1" placeholder="Click Here" onchange='getUnsSuggest()'/>
 
    <br/>
    <label for="fname">End Date & Time</label>
    <input type="text" name="endDate" id="dateTime2" placeholder="Click Here" />
    <br />
    
    <label for="stLoc">Transportation Suggestion</label>
    <br/>
    
    <input type="radio" class="unsch" name="schornot" checked>Unscheduled Transportation</input>
    <input type="radio" class="sch" name="schornot" >Scheduled Transportation</input>
    <br/>
    <div id="unscheduled" style="display:block">
        <select id="uns" class="classic" name="UNSCHEDULED_TRANSPORTATION_ID">
            <option value='0'>Masukkan Lokasi Event, dan Arrival Time terlebih dahulu</option>
        </select>
    </div>
    <div id="scheduled" style="display:none">
        <select class="classic" name="SCHEDULED_TRANSPORTATION_ID" id="Test" onClick="showBandara(SCHEDULED_TRANSPORTATION_ID.value)">
            <option value="Pesawat">Pesawat</option>
            <option value="Mobil">Mobil</option>
        </select>
    </div>

    <div id="bandara" style="display:none">
        <label for="stLoc">Bandara 1</label>
	<select class="classic" name="loc2Id">
            <option value="Bandara1">Bandara1</option>
            <option value="Bandara1">Bandara2</option>
	</select>
        <label for="stLoc">Bandara 2</label>
	<select class="classic" name="loc2Id">
            <option value="Bandara1">Bandara1</option>
            <option value="Bandara2">Bandara2</option>
	</select>
    </div>
     
    <label for="fname">Keterangan</label>
    <input type="text" id="keterangan" name="description" placeholder="..."/>

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
        <!-- display google map -->
    <div id="geomap"></div>
    <input type="submit" value="Add"/>
  </form>

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
<script>
var geocoder;
var map;
var marker;

/*
 * Google Map with marker
 */
function initialize() {
    var initialLat = $('.search_latitude').val();
    var initialLong = $('.search_longitude').val();
    initialLat = initialLat?initialLat:-6.871901;
    initialLong = initialLong?initialLong:107.573737;

    var latlng = new google.maps.LatLng(initialLat, initialLong);
    var options = {
        zoom: 16,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("geomap"), options);

    geocoder = new google.maps.Geocoder();

    marker = new google.maps.Marker({
        map: map,
        draggable: true,
        position: latlng
    });

    google.maps.event.addListener(marker, "dragend", function () {
        var point = marker.getPosition();
        map.panTo(point);
        geocoder.geocode({'latLng': marker.getPosition()}, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker.setPosition(results[0].geometry.location);
                $('.search_addr').val(results[0].formatted_address);
                $('.search_latitude').val(marker.getPosition().lat());
                $('.search_longitude').val(marker.getPosition().lng());
            }
        });
    });

}

$(document).ready(function () {
    //load google map
    initialize();
    
    /*
     * autocomplete location search
     */
    var PostCodeid = '#search_location';
    $(function () {
        $(PostCodeid).autocomplete({
            source: function (request, response) {
                geocoder.geocode({
                    'address': request.term
                }, function (results, status) {
                    response($.map(results, function (item) {
                        return {
                            label: item.formatted_address,
                            value: item.formatted_address,
                            lat: item.geometry.location.lat(),
                            lon: item.geometry.location.lng()
                        };
                    }));
                });
            },
            select: function (event, ui) {
                $('.search_addr').val(ui.item.value);
                $('.search_latitude').val(ui.item.lat);
                $('.search_longitude').val(ui.item.lon);
                var latlng = new google.maps.LatLng(ui.item.lat, ui.item.lon);
                marker.setPosition(latlng);
                initialize();
            }
        });
    });
    
    /*
     * Point location on google map
     */
    $('.get_map').click(function (e) {
        var address = $(PostCodeid).val();
        geocoder.geocode({'address': address}, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                map.setCenter(results[0].geometry.location);
                marker.setPosition(results[0].geometry.location);
                $('.search_addr').val(results[0].formatted_address);
                $('.search_latitude').val(marker.getPosition().lat());
                $('.search_longitude').val(marker.getPosition().lng());
            } else {
                alert("Geocode was not successful for the following reason: " + status);
            }
        });
        e.preventDefault();
    });

    //Add listener to marker for reverse geocoding
    google.maps.event.addListener(marker, 'drag', function () {
        geocoder.geocode({'latLng': marker.getPosition()}, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                if (results[0]) {
                    $('.search_addr').val(results[0].formatted_address);
                    $('.search_latitude').val(marker.getPosition().lat());
                    $('.search_longitude').val(marker.getPosition().lng());
                }
            }
        });
    });
});
</script>


</body>
</html>
