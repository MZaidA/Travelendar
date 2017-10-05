<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:56:06 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/styleMenu.css">
<style>

</style>
</head>
<body>

<h1>Manage Location</h1>
<p>Menu yang dapat melakukan update,add, dan list nama lokasi-lokasi</p>

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>No</th>
      <th>Nama Lokasi</th>
      <th>Edit</th>

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
<br><br>
<div class="form">
	<form >
    <label for="fname">Location</label>
    <input type="text" id="lname" name="Location" placeholder="Location..">

    <label for="country">Country</label>	
    <select id="country" name="country">
      <option value="australia">Australia</option>
      <option value="canada">Canada</option>
      <option value="usa">USA</option>
    </select>
  
    <input type="submit" value="Add">
  </form>
</div>
<br>
<a href="/Travlendar/Home" class="button1">Home</a>
<br><br><br><br>

</body>
</html>
