<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

    <link rel="stylesheet" href="../Assets/css/Style.css"/>
    <link href="../Assets/jquery/jquery-ui.css" rel="stylesheet"/> <!--DatePicker css-->
    <script src="../Assets/jquery/jquery-3.2.1.min.js"></script>
    <script>
    $(document).ready(function(){
            $(".notfirst").click(function() {
                    $("#demo").hide(1000)});
    });
    $(document).ready(function(){
            $(".first").click(function() {
                    $("#demo").show(1000)});
    });
    </script>
    
    <title>Travelendar</title>

</head>

<body>
    
    <%
        String userName = request.getParameter("userName");
        %>

<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">
</div>

<div class="row">
    <div class="navbar">
        <ul>
          <li><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
          <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
          <li class="selected"><a href="../CreateAgenda"><img src="../Assets/icon/add.png" width="28" height="28" style="float:left;"><div class="text-navbar">Add Agenda</div></a></li>
           <li><a href="../AdminPage"><img src="../Assets/icon/manage.png" width="28" height="28" style="float:left;"><div class="text-navbar">Manage</div></a></li>
        </ul>
    </div><!--Class Navbar-->

<div class="column content">
<h1>Create a New Agenda</h1>


<div class="form">
	<form action="/action_page.php">

    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="EventName" placeholder="...">
    
    <div id="demo" style="display:none">
    <label for="stLoc">Start Location</label>
	<select class="classic" name="location">
      <option value="">Rumah</option>
      <option value="">Kantor DPRD</option>
      <option value="">Bandara Banka</option>
      <option value="">Bandara Halim Perdanakusuma</option>
      <option value="">Jakarta</option>
      <option value="">Tangerang</option>
	 </select>
    </div>
    <button type="button" class="notfirst">Not First Event</button>
    <button type="button" class="first">First Event</button>
    <br/>
    <label for="stLoc">Location</label>
    <br/>
	 <select class="classic" name="location">
      <option value="">Rumah</option>
      <option value="">Kantor DPRD</option>
      <option value="">Bandara Banka</option>
      <option value="">Bandara Halim Perdanakusuma</option>
      <option value="">Jakarta</option>
      <option value="">Tangerang</option>
	 </select>
     <br/>
    <label for="fname">Start Date</label>
    <input type="text" style="width:40%;" id="datepicker">

    <label for="fname">Time</label>
	<input type="text" id="timepicker-one" name="timepicker-one" class="timepicker" style="width:30%;"/>
    <br />
    <label for="fname">End Date</label>
    <input type="text" style="width:40%;" id="datepicker2">
    <label for="fname">Time</label>
	<input type="text" id="timepicker-two" name="timepicker-two" class="timepicker" style="width:30%;"/>
    <br />
    
    <label for="fname">Keterangan</label>
    <input type="text" id="keterangan" name="Keterangan" placeholder="...">

    <input type="submit" value="Add">
  </form>
	</div>
</div>
<br><br><br><br>
<link rel="stylesheet" href="../Assets/css/wickedpicker.min.css"/> <!--TimePicker css-->
<script src="../Assets/jquery/external/jquery/jquery.js"></script>
<script src="../Assets/jquery/jquery-ui.js"></script>
<script type="text/javascript" src="../Assets/js/wickedpicker.min.js"></script>


<script>
var timepickers = $('.timepicker').wickedpicker(); console.log(timepickers.wickedpicker('time', 1)); //JS console: time of timepicker-two
</script>
<script>
$( "#datepicker" ).datepicker({
	inline: true
});

$( "#datepicker2" ).datepicker({
	inline: true
});


</script>
</body>
</html>
