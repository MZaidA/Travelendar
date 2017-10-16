<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:56:06 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LocationDAO, Model.Location, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
<title>JSP Page</title>
         <%
            List<Location> locations = LocationDAO.getAll();
            request.setAttribute("locations", locations);
        %>
        <%
            List<District> distrits = LocationDAO.getDistrict();
            request.setAttribute("locations", locations);
        %>
</head>
<body>
	<div class="wrapper">
        <li><strong>Admin</strong>TRAVELENDAR</li> 	
    </div>
        <%@ include file = "../navbarManage.jsp" %>
    <div id="mainPanel" style="overflow-x:hidden;">
        <h1>MANAGE LOCATION</h1>
        <table>
    <tr>
      <th>No</th>
      <th>Nama Lokasi</th>
      <th>Alamat</th>
      <th>Kota</th>
      <th>Action</th>

    </tr>
    
    <c:forEach items="${locations}" var="location">
    <tr>
      <td> ${loop.index+1}</td>
      <td> ${location.locationName} </td>
      <td> ${location.address}</td>
      <td> ${location.districtId}</td>
      <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
    </tr>
    </c:forEach>
  </table>
    </div>
    <br>
    <br>
    <div class="form">
            <%@page import="DAO.LocationDAO"%>
            <jsp:useBean id="loc" class="Model.Location"></jsp:useBean>
            <jsp:setProperty property="*" name="loc"/>

            <%--<jsp:getProperty property="LOCATION_ID" name="loc"></jsp:getProperty>--%>
            
            <form action="/action_page.php">
            <label for="fLocation">Location</label>
            <input type="text" id="mLocation" name="Location" placeholder="Location...">
            <label for="faddres">Address</label>
            <input type="text" id="mAddress" name="Address" placeholder="Address...">
            <label for="fCity">City</label>
            <select class="minimal">
                <c:forEach items="${events}" var="item">
                
                </c:forEach>
            </select>
            <input type="submit">
            </form>
        </div> 
</body>
</html>

