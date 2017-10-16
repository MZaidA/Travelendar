<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:56:06 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
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
    <tr>
      <td>1</td>
      <td>Polban</td>
      <td>Jl. Kampus POLBAN</td>
      <td>Bandung</td>
      <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Ciwaruga</td>
      <td>Jl. Kampus POLBAN</td>
      <td>Bandung</td>
      <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Pasteur</td>
      <td>Jl. Kampus POLBAN</td>
      <td>Bandung</td>
      <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
    </tr>
  </table>
    </div>
    <br>
    <br>
    <div class="form">
            <form action="/action_page.php">
            <label for="fname">Location</label>
            <input type="text" id="mLocation" name="Location" placeholder="Location...">
            
            <input type="submit" value="Add">
            </form>
        </div> 
</body>
</html>

