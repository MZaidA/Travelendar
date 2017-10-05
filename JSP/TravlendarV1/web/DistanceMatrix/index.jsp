<%-- 
    Document   : index
    Created on : Sep 26, 2017, 3:52:47 AM
    Author     : afadh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="css/styleMenu.css">
<title>Distance Matriks</title>
</head>

<body>

<h1>Manage Distance Matriks</h1>
<p>Menu yang dapat melakukan update,add, dan list Distance Matriks</p>

<div class="wrapper">
<div class="batas">
  <table>
      <tr>
        <th>No</th>
        <th>Starting Location</th>
        <th>Final Location</th>
        <th>Distance (KM)</th>
        <th>Edit</th>
      </tr>
    <tr>
      <td>1</td>
      <td>Kantor DPRD</td>
      <td>Bandara Banka</td>
      <td>60,9</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>2</td>
      <td>Rumah</td>
      <td>Kantor DPRD</td>
      <td>65,7</td>
      <td><a href="#Update">Update</a></td>
    </tr>
    <tr>
      <td>3</td>
      <td>Bandara Banka</td>
      <td>Bandara Halim Perdanakusuma</td>
      <td>736</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>4</td>
      <td>Jakarta</td>
      <td>Tangerang</td>
      <td>31,3</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>5</td>
      <td>Bandara Banka</td>
      <td>Rumah</td>
      <td>13,4</td>
      <td><a href="#Update">Update</a></td>
    </tr>
     <tr>
      <td>6</td>
      <td>Tanggerang</td>
      <td>Bandara Halim Perdanakusuma</td>
      <td>31,3</td>
      <td><a href="#Update">Update</a></td>
    </tr>
  </table>
  </div><!--class "Batas"-->
<br><br>
    <div class="form">
     <form >
    	<label for="stLoc">Start Location</label>
    	 <select id="stLocation" name="location"> 
          <option value="blank"></option>
          <option value="">Rumah</option>
          <option value="">Kantor DPRD</option>
          <option value="">Bandara Banka</option>
          <option value="">Bandara Halim Perdanakusuma</option>
          <option value="">Jakarta</option>
          <option value="">Tangerang</option>
		 </select>
    	<label for="finalLoc">Final Location</label>
    	 <select id="finalLocation" name="location"> 
          <option value="blank"></option>
          <option value="">Rumah</option>
          <option value="">Kantor DPRD</option>
          <option value="">Bandara Banka</option>
          <option value="">Bandara Halim Perdanakusuma</option>
          <option value="">Jakarta</option>
          <option value="">Tangerang</option>
         </select>
            <label for="fname">Distance</label>
        <input type="text" id="distance" name="Distance" placeholder="Distance... KM">
      
        <input type="submit" value="Add">
      </form>
    </div><!--class "form"--> 
<br>
<a href="/Travlendar/Home" class="button1">Home</a>
</div> <!--class "wrapper"-->
<br><br><br><br>
</body>
</html>

