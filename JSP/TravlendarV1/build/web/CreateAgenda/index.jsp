<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LocationDAO, Model.Location, java.util.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link rel="stylesheet" href="../Assets/css/Style.css"/>
    <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui.css"/> <!--http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css-->
    <link rel="stylesheet" href="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.css"/>
    <script type="text/javascript" src="../Assets/datetimepick/jquery/jquery-1.11.1.min.js"></script>
    <script>
    $(document).ready(function(){
            $(".notfirst").click(function() {
                    $("#demo").hide(10)});
    });
    $(document).ready(function(){
            $(".first").click(function() {
                    $("#demo").show(10)});
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
    <form name="myform">
    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="eventName" placeholder="..."/>
    <div id="demo" style="display:none">
    <label for="stLoc">Start Location</label>
	<select class="classic" name="loc2Id">
            <c:forEach items="${locations}" var="item">
            <option value="${item.locationId}">${item.locationName}</option>
            </c:forEach>
	 </select>
    </div>
    <input type="radio" class="notfirst" name="firstornot" checked>Not first Event</input>
    <input type="radio" class="first" name="firstornot">First Event</input>
    <br/>
    
    <label for="fname">Location</label>
    <select class="classic" name="loc2Id">
            <c:forEach items="${locations}" var="item">
            <option value="${item.locationId}">${item.locationName}</option>
            </c:forEach>
    </select>
    
    <label for="stLoc">Transportation</label>
    <br/>
    <select class="classic" name="locationId" id="Test" onClick="showBandara(locationId.value)">
      <!-- <c:forEach items="${locations}" var="item">
      <option name="id" value="${item.locationId}">${item.locationName}</option>
      </c:forEach>-->
        <option value=""></option>
        <option value="Pesawat">Pesawat</option>
        <option value="Mobil">Mobil</option>
	</select>
     <br/>
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
    
    <label for="fname">Start Date & Time</label>
    <input type="text" name="dateTime1" id="dateTime1" placeholder="Click Here" />
 
    <br/>
    <label for="fname">End Date & Time</label>
    <input type="text" name="dateTime2" id="dateTime2" placeholder="Click Here" />
    <br />
    
    <label for="fname">Keterangan</label>
    <input type="text" id="keterangan" name="description" placeholder="..."/>

    <input type="button" value="Add Again" onClick="validateTransport(this.form)"/>
    <input type="button" value="Done" onClick="validateTransport(this.form)"/>
  </form>

	</div>
    </div>
</div>
<div class="footer">
Travlender 2017
</div>



<script type="text/javascript" src="../Assets/datetimepick/jquery/ui/1.11.0/jquery-ui.min.js"></script>
<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-timepicker-addon.js"></script>
<script type="text/javascript" src="../Assets/datetimepick/dist/i18n/jquery-ui-timepicker-addon-i18n.min.js"></script>
<script type="text/javascript" src="../Assets/datetimepick/dist/jquery-ui-sliderAccess.js"></script>


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
function validateTransport(form) {
    var transporPublic = form.locationId.value;
    if (transporPublic == "Pesawat"){
        alert ("Tambah Menu");
        document.getElementById(bandara).style.display ='block';
    }
    else
    {
        alert("Langsung");
        location ="addagenda.jsp";
    }
}
</script>
</body>
</html>
