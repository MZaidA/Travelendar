<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:56:06 PM
    Author     : Cecep Sutisna
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.LocationDAO, Model.Location, java.util.*"%>
<%@page import="Model.District"%>
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
            List<District> districts = LocationDAO.getDistrict();
            request.setAttribute("districts", districts);
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
    
    <c:forEach items="${locations}" var="item">
    <tr>
      <td> ${loop.index+1}</td>
      <td> ${item.locationName} </td>
      <td> ${item.address}</td>
      <td> ${item.districtName}</td>
      <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
    </tr>
    </c:forEach>
    
  </table>
    </div>
    <br>
    <br>
    <div class="form">
            <form action="/action_page.php">
            <label for="fLocation">Location</label>
            <input type="text" id="mLocation" name="Location" placeholder="Location...">
            <label for="faddres">Address</label>
            <input type="text" id="mAddress" name="Address" placeholder="Address...">
            <label for="fCity">City</label>
            <select class="minimal">
                <c:forEach items="${districts}" var="item">
                <option>${item.districtName}</option>
                </c:forEach>
            </select>
            <input type="submit">
            </form>
        </div> 
</body>
</html>

