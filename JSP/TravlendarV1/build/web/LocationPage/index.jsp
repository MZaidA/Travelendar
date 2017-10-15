<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:33:57 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/LocationPage.css">
        <title>Travlendar</title>
    </head>
    <body>
	<div class="wrapper">
        <li><strong>Admin</strong>TRAVELENDAR</li> 	
    </div>
	<div id="sidebar">
        <li><a href="../LocationPage/index.jsp">Manage Location</a></li>
        <li><a href="../DistancePage/index.jsp">Manage Distance</a></li>
        <li><a href="../TransportationaPage/index.jsp">Manage Transport</a></li>
        <li><a href="../EstimatedTimePage/index.jsp">Manage Estimated Time</a></li>
    </div>
    <div id="mainPanel" style="overflow-x:auto;">
        <h1>MANAGE LOCATION</h1>
        <table>
    <tr>
      <th>No</th>
      <th>Nama Lokasi</th>
      <th>Action</th>

    </tr>
    <tr>
      <td>1</td>
      <td>Polban</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Ciwaruga</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Pasteur</td>
      <td><a href="#Update">Update</a></td>
    </tr>
  </table>
    </div>
    <div class="form">
            <form action="/action_page.php">
            <label for="fname">Location</label>
            <input type="text" id="mLocation" name="Location" placeholder="Location...">
            
            <input type="submit" value="Add">
            </form>
        </div> 
</body>
</html>