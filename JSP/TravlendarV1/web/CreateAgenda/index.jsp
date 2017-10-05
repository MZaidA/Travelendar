<%-- 
    Document   : index
    Created on : Sep 25, 2017, 3:48:59 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/styleMenu.css">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Travelendar</title>
<link href="jquery/jquery-ui.css" rel="stylesheet">

</head>

<body>
    
    <%
        String userName = request.getParameter("userName");
        %>

<div class="navbar">
<ul style="list-style-type: none;">
<img src="css/icon/LogoKelompokB1.png" width="145" height="50">
  <li style="float:right;"class="dropdown">
    <div id="menuBtn" class="dropbtn"><img src="css/icon/showmenu.png" alt="Menu" width="40" height="40"></div>
    	<div id="myDropdown" class="dropdown-content">
        	<a href="\Travlendar\UserProfile"><div class="t2"> <%= userName %> </div><img src="css/icon/user.png" alt="css/icon/user.png" width="40" height="40"></a>
        	<a href="\Travlendar\Home"><img src="css/icon/home.png" alt="Menu" width="40" height="40"><div class="t1">Home</div></a>
        	<a href="\Travlendar\Calendar"><img src="css/icon/calendar1.png" alt="Menu" width="40" height="40"><div class="t1">Calendar</div></a>
        	<a href="\Travlendar\Logins"><img src="css/icon/logout.png" alt="Menu" width="40" height="40"><div class="t1">Log Out</div></a>
        </div>
  </li>
</ul>
</div>
<br><br><br><br><br><br><br>
<h1>Create a New Agenda</h1>

<div style="overflow-x:auto;">
<div>
<br><br>
<div class="form">
	<form action="/action_page.php">

    <label for="fname">Event Name</label>
    <input type="text" id="eventName" name="EventName" placeholder="...">
    
    <label for="stLoc">Location</label>
	 <select id="stLocation" name="location"> 
      <option value="blank"></option>
      <option value="">Rumah</option>
      <option value="">Kantor DPRD</option>
      <option value="">Bandara Banka</option>
      <option value="">Bandara Halim Perdanakusuma</option>
      <option value="">Jakarta</option>
      <option value="">Tangerang</option>
	 </select>
    
    <label for="fname">Start Date</label>
    <input type="text" style="width:40%;" id="datepicker">
    
    <label for="fname">Time</label>
    <input type="text" style="width:40%;" placeholder="hh:mm:ss">
    <br>
    <label for="fname">End Date</label>
    <input type="text" style="width:40%;" id="datepicker2">
    
    <label for="fname">Time</label>
    <input type="text" style="width:40%;" placeholder="hh:mm:ss">
    
    <label for="fname">Keterangan</label>
    <input type="text" id="keterangan" name="Keterangan" placeholder="...">

    <input type="submit" value="Add">
  </form>
</div>
<br><br><br><br>
<script src="jquery/external/jquery/jquery.js"></script>
<script src="jquery/jquery-ui.js"></script>
<script>
$( "#datepicker" ).datepicker({
	inline: true
});

$( "#datepicker2" ).datepicker({
	inline: true
});

// Get the button, and when the user clicks on it, execute myFunction
document.getElementById("menuBtn").onclick = function() {myFunction()};

/* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}


</script>
</body>
</html>
