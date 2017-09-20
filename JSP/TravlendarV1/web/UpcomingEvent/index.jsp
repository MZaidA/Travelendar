<%-- 
    Document   : index
    Created on : Sep 19, 2017, 12:28:41 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Travlendar</title>
<link rel="stylesheet" href="css/Style.css">
</head>
<body>

<div class="navbar">
<ul style="list-style-type: none;">
<img src="css/icon/logocontoh.png" width="130" height="40">
  <li style="float:right;margin-top:0px;"class="dropdown">
    <div class="dropbtn"><img src="css/icon/showmenu.png" alt="Menu" width="40" height="40"></div>
    	<div class="dropdown-content">
            <a href="#"><img src="css/icon/home.png" alt="Menu" width="40" height="40"><div class="t1">Home</div></a>
            <a href="#"><img src="css/icon/calendar1.png" alt="Menu" width="40" height="40"><div class="t1">Calendar</div></a>
            <a href="#"><img src="css/icon/logout.png" alt="Menu" width="40" height="40"><div class="t1">Log Out</div></a>
        </div>
  </li>
</ul>
</div>

<h1> Upcoming Event </h1>

<div class="relative">
	<div class="boxstyle1">
    	<div class="row">
    		<div class="column">
       			<content style="font-size:23px;">Event 1<br></content>
            	<content style="font-size:16px;">Time: 10:20 - 12:30</content>
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
            	<div id="countdown"></div> 
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
    			<button><a href="#EventDetails">Event details</a></button>
			</div>
   		</div>
  </div>
</div>

<div class="relative">
	<div class="boxstyle1">
    	<div class="row">
    		<div class="column">
       			<content style="font-size:23px;">Event 2<br></content>
            	<content style="font-size:16px;">Time: 13:00 - 14:00</content>
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
            	<div id="countdown"></div> 
            </div>
            <div class="column" style="margin-top:2%;text-align:center;">
    			<button><a href="#EventDetails">Event details</a></button>
			</div>
   		</div>
  </div>
</div>

<div class="footer">
Lander 2017
</div>


<script>

function countdown(setdetik) {
	var minutes = 1;
    var seconds = setdetik;
    var mins = minutes
    function tick() {
        //elemen dengan id= counter bisa diganti sesuka hati 
        var counter = document.getElementById("countdown");
        var current_minutes = mins-1;
        seconds--;
        counter.innerHTML = String(seconds);
        if( seconds > 0 ) {
            setTimeout(tick, 1000);
        } else {
            if(mins > 1){
                countdown(mins-1);           
            }
        }
    }
    tick();
}
countdown(120); 


</script>

</body>
</html>