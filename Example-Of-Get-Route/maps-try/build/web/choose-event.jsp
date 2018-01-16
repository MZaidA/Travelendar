<%-- 
    Document   : choose-event
    Created on : Nov 18, 2017, 11:03:24 PM
    Author     : adita
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.EventDAO, Model.Event, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Choose Event</title>
        <%
            List<Event> events = EventDAO.getAll();
            request.setAttribute("events", events);
        %>
    </head>
    <body>
        <table border="1">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Start</th>
                    <th>End</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${events}" var="item" varStatus="loop">
                    <tr>
                        <td> ${loop.index+1}</td>
                        <td>${item.startName}</td>
                        <td>${item.endName}</td>
                        <td>
                            <a href="request-map.jsp?id=${item.id}" class="button1">choose</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </body>
</html>
