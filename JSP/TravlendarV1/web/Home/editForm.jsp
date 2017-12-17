<%-- 
    Document   : editForm
    Created on : Dec 17, 2017, 4:27:59 PM
    Author     : myLIFE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*, DAO.EventDAO" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE  html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>Edit Form</title>  
    </head>  
<body>  
<%@page import="DAO.EventDAO, Model.Event"%>  
  
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
    <%  
        String id=request.getParameter("id");  
        Event event=EventDAO.get(Integer.parseInt(id));  
    %>  
<h1>Edit Form</h1>  
<div class="form">
    <form action="editEvent.jsp" method="post">  
    <input type="hidden" name="id" value="<%=event.getEvent_id()%>"/>  <!-- Untuk Editing -->
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
    <!--    
    <div class="form-group input-group">
            <div class="input-group-btn">
                <button id="done">
                    View Route
                </button>
                <button id="With-Tolls">
                    View Route Via Tolls
                </button>
            </div>
    </div>
    -->
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
</body>  
</html>  