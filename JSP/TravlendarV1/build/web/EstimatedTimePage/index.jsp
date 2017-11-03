<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:32:59 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.UnscheduledTravelingTableDAO, Model.UnscheduledTravelingTable, java.util.*"%>
<%@page import="DAO.ScheduledTravelingTableDAO, Model.ScheduledTravelingTable"%>
<%@page import="Model.Location"%>
<%@page import="Model.UnscheduledTransportation"%>
<%@page import="Model.ScheduledTransportation"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui.css"/> <!--http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css-->
        <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.css"/> <!-- link untuk memanggil timepicker -->
        <script type="text/javascript" src="../Assets/datetimepick/jquery/jquery-1.11.1.min.js"></script>
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
        <title>Manage Scheduled Traveling - Travlendar</title>
        <%
            List<ScheduledTravelingTable> scheduledTravelingTables = ScheduledTravelingTableDAO.getAll();
            request.setAttribute("scheduledTravelingTables", scheduledTravelingTables);
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
            
                <h1>MANAGE SCHEDULED TRAVELING</h1>
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
                            <td>tes</td>
                            <td>tes</td>
                            <td>tes</td>
                            <td>tes</td>
                            <td>tes</td>
                            <td>tes</td>
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
                        <c:forEach items="${scheduledTransportations}" var="item">
                            <option value="${item.scheduledTransportationId}">${item.scheduledTransportationName}</option>
                        </c:forEach>
                    </select>
                    <label for="fname">Departure Time</label>
                    <input type="text" id="dateTime1" name="departureTime" placeholder="departureTime...">
                    <label for="fname">Arrival Time</label>
                    <input type="text" id="dateTime2" name="arrivalTime" placeholder="arrivalTime...">
                    <input type="submit">
                </form>
            </div>
        </div>
        </div>
        
<script type="text/javascript" src="../Assets/datetimepick/jquery/ui/1.11.0/jquery-ui.min.js"></script> <!-- link untuk memanggil timepicker -->
<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.js"></script> <!-- link untuk memanggil timepicker -->
<script type="text/javascript" src="../Assets/datetimepick/dist/i18n/jquery-ui-timepicker-addon-i18n.min.js"></script> <!-- link untuk memanggil timepicker -->
<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-sliderAccess.js"></script> <!-- link untuk memanggil timepicker -->
        
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

$('#dateTime1').timepicker({
	controlType: myControl
});
$('#dateTime2').timepicker({
        controlType: myControl
});
</script>
    </body>
</html>
