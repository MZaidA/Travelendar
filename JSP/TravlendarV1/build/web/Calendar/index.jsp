<%-- 
    Document   : index
    Created on : Sep 19, 2017, 2:38:22 PM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
<style>
.navbar{
	position:fixed;
	z-index:10;
	top:0;
	margin-left:-10px;
	width:100%;
    padding: 5px 16px; /*top & bottom paddings are 14px right and left paddings are 16px*/
    background-color: #0080C0;/*Biru*/
}

.navbar li{
	font-family:"Courier New", Courier;
	font-size:25px;
	float:left;
	margin-top:10px;
	border-right:1px solid #bbb;
}

.navbar li:last-child{
	border-right:none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color: #ddd;
}

li.dropdown {
    display: inline-block;
}
.dropbtn{
	margin-right:30px;
}
.dropdown-content {
    display: none;
    position: fixed;
	overflow:auto;
    background-color: #f1f1f1;
    max-width: 250px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
	right:0;
	margin-right:16px;
	text-align:center;		
	padding: 12px 0px;
}

.dropdown-content img{
	border-radius: 50%;
	margin-top:10px;
}

.dropdown-content a {
	color: black;
    padding: 12px 16px;
    text-decoration:none;
    display: inline-block;
}

.dropdown-content a:hover {
	background-color: #ddd}

.dropdown:hover .dropbtn {
    background-color: #ddd;
}

.show {display:inline;}

.t1{font-size:13px;}
.t2{font-size:20px;width:200px;}
.t3{font-size:23px;color:white;	font-family:"Lucida Console", Monaco, monospace;}
.t4{font-size:16px;color:white;}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel='stylesheet' href='lib/fullcalendar.css'/>
        
		<script src='lib/jquery.min.js'></script>
		<script src='lib/moment.min.js'></script>
		<script src='lib/fullcalendar.min.js'></script>
        <title>JSP Page</title>
    <script>

	$(document).ready(function() {
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'listDay,listWeek,month'
			},

			// customize the button names,
			// otherwise they'd all just say "list"
			views: {
				listDay: { buttonText: 'list day' },
				listWeek: { buttonText: 'list week' }
			},

			defaultView: 'month',
			defaultDate: '2017-09-12',
			navLinks: true, // can click day/week names to navigate views
			editable: true,
			eventLimit: true, // allow "more" link when too many events
			events: [
				{
					title: 'Tisigram',
					start: '2017-09-01'
				},
				{
					title: 'Long Event',
					start: '2017-09-07',
					end: '2017-09-10'
				},
				{
					id: 123,
					title: 'Repeating Event',
					start: '2017-09-19T16:00:00'
				},
				{
					id: 999,
					title: 'Repeating Event',
					start: '2017-09-16T16:00:00'
				},
				{
					title: 'Conference',
					start: '2017-09-11',
					end: '2017-09-13'
				},
				{
					title: 'Meeting',
					start: '2017-09-12T10:30:00',
					end: '2017-09-12T12:30:00'
				},
				{
					title: 'Lunch',
					start: '2017-09-12T12:00:00'
				},
				{
					title: 'Meeting',
					start: '2017-09-12T14:30:00'
				},
				{
					title: 'Happy Hour',
					start: '2017-09-12T17:30:00'
				},
				{
					title: 'Dinner',
					start: '2017-09-12T20:00:00'
				},
				{
					title: 'Birthday Party',
					start: '2017-09-13T07:00:00'
				},
				{
					title: 'Click for Google',
					url: 'http://google.com/',
					start: '2017-09-28'
				}
			]
		});
	});

</script>
<style>

	body {
		margin: 40px 10px;
		padding: 0;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		font-size: 14px;
	}

	#calendar {
		max-width: 900px;
		margin: 0 auto;
	}

</style>
</head>
<body>

<div class="navbar">
<ul style="list-style-type: none;">
<img src="css/icon/LogoKelompokB1.png" width="145" height="50">
  <li style="float:right;"class="dropdown">
    <div id="menuBtn" class="dropbtn"><img src="css/icon/showmenu.png" alt="Menu" width="40" height="40"></div>
    	<div id="myDropdown" class="dropdown-content">
        	<a href="\Travlendar\UserProfile"><div class="t2">USERNAME</div><img src="css/icon/user.png" alt="css/icon/user.png" width="40" height="40"></a>
        	<a href="\Travlendar\Home"><img src="css/icon/home.png" alt="Menu" width="40" height="40"><div class="t1">Home</div></a>
        	<a href="\Travlendar\Calendar"><img src="css/icon/calendar1.png" alt="Menu" width="40" height="40"><div class="t1">Calendar</div></a>
        	<a href="\Travlendar\Login"><img src="css/icon/logout.png" alt="Menu" width="40" height="40"><div class="t1">Log Out</div></a>
        </div>
  </li>
</ul>
</div>

<br><br><br><br>

	<div id='calendar'></div>
    
    <script>
	// Get the button, and when the user clicks on it, execute myFunction
document.getElementById("menuBtn").onclick = function() {myFunction()};

/* myFunction toggles between adding and removing the show class, which is used to hide and show the dropdown content */
function myFunction() {
    document.getElementById("myDropdown").classList.toggle("show");
}

	</script>

</body>

</html>
