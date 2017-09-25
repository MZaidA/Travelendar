<%-- 
    Document   : index
    Created on : Sep 25, 2017, 8:59:43 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/styleMenu.css">
<title>Travlendar</title>
</head>

<body>

<h1>Manage Estimated Time</h1>
<p>Menu yang dapat melakukan update,add, dan list Moda Transportasi</p>

<div style="overflow-x:auto;">
  <table>
    <tr>
      <th>No</th>
      <th>Code</th>
      <th>Mode Transportation</th>
      <th>Edit</th>

    </tr>
    <tr>
      <td>1</td>
      <td>P01</td>
      <td>Walk</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>P02</td>
      <td>Bicycle</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>P03</td>
      <td>Motorcycle</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>4</td>
      <td>P04</td>
      <td>Car</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>5</td>
      <td>U01</td>
      <td>Becak</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>6</td>
      <td>U02</td>
      <td>Angkot</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>7</td>
      <td>U03</td>
      <td>Ojek</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>8</td>
      <td>U04</td>
      <td>Taksi</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>9</td>
      <td>U05</td>
      <td>Bus</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>10</td>
      <td>U06</td>
      <td>Train</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>11</td>
      <td>U07</td>
      <td>Ship</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>12</td>
      <td>U08</td>
      <td>Plan</td>
      <td><a href="#Update">Update</a></td>
    </tr>
  </table>
<br><br>
<div class="form">
	<form >
    <label for="fname">Mode Transportation</label>
    <input type="text" id="mTransportation" name="ModeTransportation" placeholder="Transportation...">
        <label for="fname">Code Transpotation</label>
    <input type="text" id="cTransportation" name="CodeTransportation" placeholder="Code...">
  
    <input type="submit" value="Add">
  </form>
</div> 
<br>
<a href="/Travlendar/Home" class="button1">Home</a>
<br><br><br><br>

 
</div>
</body>
</html>

