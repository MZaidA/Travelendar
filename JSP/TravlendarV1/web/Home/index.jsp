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
            String username=(String)session.getAttribute("username"); 
            List<Event> events = EventDAO.getAll(username);
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
                                    <td class="t4">${item.eventName}</td>
                                    <td class="t4">${item.arrivalDateStr}</td>
                                    <td class="text-align-center"><a class="action" href="#" onclick="showDetail(${loop.index+1})"><i class="material-icons">details</i></a>
                                        <a href="editForm.jsp?event_id=${item.event_id}" class="action"><i class="material-icons">mode_edit</i></a>
                                        <a href="delEvent.jsp?event_id=${item.event_id}" class="action"><i class="material-icons">delete</i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div class="">
                            <table class="table-seratus" id="detail${loop.index+1}" style="display: none;">
                                <tbody>
                                    <tr>
                                        <td class="t4" style="width: 50%;">${item.destination}</td>
                                        <td class="t4">Arrival Time : ${item.arrivalTimeStr}</td>
                                    </tr>
                                    <tr>
                                        <td class="t4" ></td>
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