<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:30:41 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Travlendar</title>
    </head>
    <body>
	<div class="wrapper">
        <li><strong>Admin</strong>TRAVELENDAR</li> 	
    </div>
	<div id="sidebar">
        <li><a href="../ManageLocation/index.jsp">Manage Location</a></li>
        <li><a href="../DistancePage/index.jsp">Manage Distance</a></li>
        <li><a href="../TransportationPage/index.jsp">Manage Transport</a></li>
        <li><a href="../EstimatedTimePage/index.jsp">Manage Estimated Time</a></li>
    </div>
    <div id="mainPanel" style="overflow-x:hidden;">
        <h1>MANAGE DISTANCE</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Location A</th>
            <th>Location B</th>
            <th>Distance (KM)</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>Kantor DPRD</td>
            <td>Bandara Bangka</td>
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
            <td>Bandara Bangka</td>
            <td>Bandara Halim Perdanakusuma</td>
            <td>73,6</td>
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
            <td>Bandara Bangka</td>
            <td>Rumah</td>
            <td>13,4</td>
            <td><a href="#Update">Update</a></td>
          </tr>
        </table>
    </div>
        <br>
        <br>
    <div class="form">
            <form action="/action_page.php">
            <label for="LocationA">Location A</label>	
            <select id="Locationa" name="Locationa">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="LocationB">Location B</label>	
            <select id="Locationb" name="Locationb">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="fname">Distance</label>
              <input type="text" id="mDistance" name="Distance" placeholder="Distance...">
              <input type="submit" value="Add">
            </form>
        </div> 
</body>
</html>
