<%-- 
Document   : index.jsp
Created on : Sep 21, 2017, 9:51:43 PM
Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Travlendar</title>
        <jsp:include page="../head.jsp" />
        <link href="../Assets/css/simplePagination.css" type="text/css" rel="stylesheet"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    </head>
    <body>
        <%
            String username=(String)session.getAttribute("username"); 
            List<Event> events = EventDAO.getAll(username);
            request.setAttribute("events", events);
            
            String departureLoc = null;
            String eventLoc = null;
            int index = events.size()-1;
            if (index > 0){
                departureLoc = events.get(0).getDepartureLocation();
                eventLoc = events.get(index).getEventLocation();
            }
            else if(index == 0)
            {
                departureLoc = events.get(0).getDepartureLocation();
                eventLoc = events.get(0).getEventLocation();
                index = 0;
            }
            else{
                index = 0;
            }

           if(username == null)
        {
            response.sendRedirect("../Login_SignUp");
        }
        %>
        <jsp:include page="../header.jsp" />
        <div class="row">
            <div class="navbar">
                <ul>
                    <li><a class="selected" href="../Home"><img src="../Assets/icon/home.png" width="28" height=28 style="float:left;"><div class="text-navbar">Home</div></a></li>
                    <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
                    <li><a href="../Create_Event"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Create Event</div></a></li>
                </ul>
            </div><!--Class Navbar-->
            <div class="column content" id="content">
                
                    <div id="map" style="border: 1px solid black;"></div>
                
                <h4> Your Event List </h4>
                <c:forEach items="${events}" var="item" varStatus="loop">
                    <div class="boxstyle1" name="box${loop.index+1}">
                        <table class="column-seratus">
                            <tbody>
                                <tr>
                                    <td class="t3">${item.eventName}</td>
                                    <td class="t4">${item.startDateStr}</td>
                                    <td class="text-align-center"><a class="action" href="#box${loop.index+1}" onclick="showDetail(${loop.index+1})"><div class="tooltip"><div class="tooltiptext">Event Detail</div><i class="material-icons">details</i></div></a>
                                        <a href="editForm.jsp?event_id=${item.event_id}" class="action"><div class="tooltip"><div class="tooltiptext">Edit</div><i class="material-icons">mode_edit</i></div></a>
                                        <a href="delEvent.jsp?event_id=${item.event_id}" class="action"><div class="tooltip"><div class="tooltiptext">Delete</div><i class="material-icons">delete</i></div></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="">
                            <table class="table-seratus" id="detail${loop.index+1}" style="display: none;">
                                <tbody>
                                    <tr>
                                        <td class="t4" style="width: 50%;"><strong>Departure Loc: </strong><br>${item.departureLocation}</td>
                                        <td class="t4"><strong>Departure Time &nbsp; &nbsp; :</strong> ${item.departureDateTimeStr} 
                                        <br><strong>Travel Mode &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong>  ${item.travelMode}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="t4" ><br></td>
                                        <td class="t4"><br></td>
                                    </tr>
                                    <tr>
                                        <td class="t4"><strong>Event Loc: </strong><br>${item.eventLocation}</td>
                                        <td class="t4"><strong>Start Event &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong> ${item.startDateTimeStr} 
                                        <br><strong>End Event &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :</strong> ${item.endDateTimeStr}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><a href="viewMap.jsp?departureLocation=${item.departureLocation}&eventLocation=${item.eventLocation}" class="action"><div class="tooltip"><div class="tooltiptext">Route View</div><i class="material-icons">streetview</i></div></a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </c:forEach>
             <div id="pagination" style="float: right ;margin: 10px 130px 0px 0px;"></div>  
    </div>
</div>

<script src="../Assets/js/jquery-1.10.2.min.js"></script>
<script src="../Assets/js/jquery.simplePagination.js"></script>

<script>
            jQuery(function($) {
                var items = $("#content .boxstyle1");

                var numItems = items.length;
                var perPage = 6;

                // Only show the first 2 (or first `per_page`) items initially.
                items.slice(perPage).hide();

                // Now setup the pagination using the `#pagination` div.
                $("#pagination").pagination({
                    items: numItems,
                    itemsOnPage: perPage,
                    cssStyle: "light-theme",

                    // This is the actual page changing functionality.
                    onPageClick: function(pageNumber) {
                        // We need to show and hide `tr`s appropriately.
                        var showFrom = perPage * (pageNumber - 1);
                        var showTo = showFrom + perPage;

                        // We'll first hide everything...
                        items.hide()
                             // ... and then only show the appropriate rows.
                             .slice(showFrom, showTo).show();
                    }
                });
            });
        </script>
<script>
            function showDetail(id) {
                var menu = document.getElementById("detail" + id);
                for(var i = 0; i < 50; i++){
                    if(id == i)
                    {
                        if(menu.style.display == 'none'){
                            document.getElementById("detail" + id).style.display = "table";
                            document.getElementById("datehide" + id).style.display = "none";
                        }
                            else
                            {
                                document.getElementById("detail" + id).style.display = "none";
                                document.getElementById("datehide" + id).style.display = "table-cell";
                            }
                    }
                }
            }
</script>
    <script>
      function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 13,
          center: {lat: -6.9168957, lng: 107.6192613}
        });
        
        var directionsService = new google.maps.DirectionsService;
        var directionsDisplay = new google.maps.DirectionsRenderer({
          draggable: false,
          map: map,
          panel: document.getElementById('right-panel')
        });

        directionsDisplay.addListener('directions_changed', function() {
          computeTotalDistance(directionsDisplay.getDirections());
        });
        
        displayRoute('<%out.print(departureLoc);%>', '<%out.print(eventLoc);%>', directionsService,
            directionsDisplay);
      }

      function displayRoute(origin, destination, service, display) {
        service.route({
          origin: origin,
          destination: destination,
          
          waypoints: [
                    <%for(int i=0; i<index;i++) {%>
                     {
                         location: '<%out.print(events.get(i).getEventLocation());%>',
                     },
                     <%}%>
          ],
          travelMode: 'DRIVING',
          avoidTolls: true
        }, function(response, status) {
          if (status === 'OK') {
            display.setDirections(response);
          } else {
            alert('Could not display directions due to: ' + status);
          }
        });
      }

      function computeTotalDistance(result) {
        var total = 0;
        var myroute = result.routes[0];
        for (var i = 0; i < myroute.legs.length; i++) {
          total += myroute.legs[i].distance.value;
        }
        total = total / 1000;
        document.getElementById('total').innerHTML = total + ' km';
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDmwISHnFG6x8zCNn0tjbDkRhooEzs_TKk&callback=initMap">
    </script>
    </body>
</html>