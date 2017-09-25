<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:41:51 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/styleMenu.css">
<title>Travelendar</title>
</head>

<body>

<h1>Manage Estimated Time</h1>
<p>Menu yang dapat melakukan update,add, dan list Estimasi Waktu</p>

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>No</th>
      <th>Loc A - Loc B</th>
      <th>Distance</th>
      <th>Mode Transportation</th>
      <th>Time(Minutes)</th>
      <th>Update</th>
    </tr>
    <tr>
      <td>1</td>
      <td>Polban-Ciwaruga</td>
      <td>1 KM</td>
      <td>Car</td>
      <td>2</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Polban-Ciwaruga</td>
      <td>1 KM</td>
      <td>Motorcycle</td>
      <td>1</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Ciwaruga-Cimahi</td>
      <td>3 KM</td>
      <td>Car</td>
      <td>15</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>4</td>
      <td>Ciwaruga-Cimahi</td>
      <td>3 KM</td>
      <td>Motorcycle</td>
      <td>20</td>
      <td><a href="#Update">Update</a></td>
    </tr>
  </table>
<div>
<br><br>
<div class="form">
	<form >

    <label for="country">Location</label>	
    <select id="Locarion" name="location"> 
      <option value="blank"></option>
      <option value="">Polban-Ciwaruga</option>
      <option value="">Ciwaruga-Cimahi</option>
    </select>
        <label for="country">Mode Transportation</label>	
    <select id="mTransportation" name="mTransportation">
      <option value="blank"></option>
      <option value="walk">Walk</option>
      <option value="">Bicycle</option>
      <option value="">Motorcycle</option>
      <option value="">Car</option>
      <option value="">Becak</option>
      <option value="">Angkot</option>
      <option value="">Ojek</option>
      <option value="">Taksi</option>
      <option value="">Bus</option>
      <option value="">Train</option>
      <option value="">Ship</option>
      <option value="">Plan</option>
    </select>
    
    <label for="fname">Distance</label>
    <input type="text" id="distance" name="Distance" placeholder="...">
    
    <label for="fname">Time</label>
    <input type="text" id="time" name="Time" placeholder="...">
    
    

    <input type="submit" value="Add">
  </form>
</div>
<br>
<a href="/Travlendar/Home" class="button1">Home</a>
<br><br><br><br>
</body>
</html>
