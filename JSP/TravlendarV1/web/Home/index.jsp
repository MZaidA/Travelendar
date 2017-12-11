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
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
    </head>
    <body>
        <%
            List<Event> events = EventDAO.getAll();
            request.setAttribute("events", events);
        %>
        <jsp:include page="../header.jsp" />
        <div class="row">
            <div class="navbar">
                <ul>
                    <li class="selected"><a href="../Home"><img src="../Assets/icon/home.png" width="30" height="30" style="float:left;"><div class="text-navbar">Home</div></a></li>
                    <li><a href="../Calendar"><img src="../Assets/icon/calendar1.png" width="28" height="28" style="float:left;"><div class="text-navbar">Calendar</div></a></li>
                    <li><a href="../ScheduleEvent"><img src="../Assets/icon/form.png" width="28" height="28" style="float:left;"><div class="text-navbar">Schedule Event Form</div></a></li>
                    <li><a href="../PreferenceScreen"><img src="../Assets/icon/settings.png" width="28" height="28" style="float:left;"><div class="text-navbar">Preference</div></a></li>
                </ul>
            </div><!--Class Navbar-->
            <div class="column content">
                <h1> Upcoming Event </h1>
                <c:forEach items="${events}" var="item" varStatus="loop">
                    <div class="boxstyle1">
                        <table class="column-seratus">
                            <tbody>
                                <tr>
                                    <td class="t4">${item.event_name}</td>
                                    <td class="t4">${item.arrivalDateStr}</td>
                                    <td class="text-align-center"><a class="action" href="#" onclick="showDetail(${loop.index+1})"><i class="material-icons">details</i></a>
                                        <a href="#" class="action"><i class="material-icons">mode_edit</i></a>
                                        <a href="delEvent.jsp?event_id=${item.event_id}" class="action"><i class="material-icons">delete</i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="">
                            <table class="table-seratus" id="detail${loop.index+1}" style="display: none;">
                                <tbody>
                                    <tr>
                                        <td class="t4">${item.destination}</td>
                                        <td class="t4">Arrival Time : ${item.arrivalTimeStr}</td>
                                    </tr>
                                    <tr>
                                        <td class="t4"></td>
                                        <td class="t4">Departure Time : ${item.departureTimeStr}</td>
                                    </tr>
                                    <tr>
                                        <td class="t4">${item.travelName}</td>
                                        <td class="t4">Event End: ${item.endTimeStr}</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
<<<<<<< HEAD
    </div>
                    
    </c:forEach>-->
    <c:forEach items="${events}" var="item">
    <div class="boxstyle1">
        <table class="column-seratus">
            <tbody>
                <tr>
                    <td class="t3">${item.eventName}</td>
                    <td class="t3">${item.departureDateStr} - ${item.endDateStr}</td>
                    <td class="text-align-center"><a class="action" href="#" onclick="showDetail(${loop.index+1})"><i class="material-icons">details</i></a>
                        <a href="#" class="action"><i class="material-icons">mode_edit</i></a>
                        <a href="#" class="action"><i class="material-icons">delete</i></a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="">
            ${loop.index+1}
            <table class="table-seratus" id="detail${loop.index+1}">
                <tbody>
                    <tr>
                        <td class="t3">Politeknik Negeri Bandung</td>
                        <td class="t3">arrival time : ${item.arrivalTimeStr}</td>
                    </tr>
                    <tr>
                        <td class="t3">${item.departureDateStr} - ${item.endDateStr}</td>
                        <td class="t3">departure time: ${item.departureTimeStr}</td>
                    </tr>
                    <tr>
                        <td class="t3">Motor</td>
                        <td class="t3">end time event: ${item.endTimeStr}</td>
                    </tr>
                </tbody>
                </table>
            </div>
    </div>
    </c:forEach>
    <div class="boxstyle1">
        <table class="column-seratus">
            <tbody>
                <tr>
                    <td class="t3">Nama Event</td>
                    <td class="t4" id="datehide2">Tanggal</td>
                    <td class="text-align-center"><a class="action" href="#" onclick="showDetail(2)"><i class="material-icons">details</i></a>
                        <a href="#" class="action"><i class="material-icons">mode_edit</i></a>
                        <a href="#" class="action"><i class="material-icons">delete</i></a>
                    </td>
                </tr>
            </tbody>
        </table>
        <div class="">
            <table class="table-seratus" id="detail2" style="display: none;">
                <tbody>
                    <tr name="detail">
                        <td class="t4">Politeknik Negeri Bandung</td>
                        <td class="t4"><pre>arrival time    : 16:00 WIB</pre></td>
                    </tr>
                    <tr name="detail1">
                        <td class="t4">Tanggal 02 Oktober 2017</td>
                        <td class="t4"><pre>departure time  : 17:00 WIB</pre></td>
                    </tr>
                    <tr name="detail2">
                        <td class="t4">Motor</td>
                        <td class="t4"><pre>end time event  : 18:00 WIB</pre></td>
                    </tr>
                </tbody>
                </table>
            </div>
    </div>
  </div>
</div>


<script>
function show(){
    document.getElementById("detail").style.display = "table";
}
</script>
<script>
function showDetail(id) {
    var menu = document.getElementById("detail" + id);
    for(var i = 0; i < 25; i++){
        if(id == i)
        {
            if(menu.style.display == 'none'){
                document.getElementById("detail" + id).style.display = "table";
                document.getElementById("datehide" + id).style.display = "none";
=======
            
        <script>
            function show(){
                document.getElementById("detail").style.display = "table";
>>>>>>> 566e96bc8cda8416dfa154c1c37d097cc2317476
            }
        </script>
        <script>
            function showDetail(id) {
                var menu = document.getElementById("detail" + id);
                for(var i = 0; i < 25; i++){
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
    </body>
</html>