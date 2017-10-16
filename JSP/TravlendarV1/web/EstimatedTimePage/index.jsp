<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:32:59 PM
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
        <h1>MANAGE ESTIMATED TIME</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Loc A - Loc B</th>
            <th>Transportaion Mode</th>
            <th>Time(Minutes)</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Walk</td>
            <td>788</td>
            <td><a href="#Update">Update</a></td>
          </tr>
          <tr>
            <td>2</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Bicycle</td>
            <td>263</td>
            <td><a href="#Update">Update</a></td>
          </tr>
          <tr>
            <td>3</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Motorcycle</td>
            <td>66</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>4</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Car</td>
            <td>79</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>5</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Angkot</td>
            <td>113</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>6</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Ojek</td>
            <td>66</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>7</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Taksi</td>
            <td>79</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>8</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Bus</td>
            <td>99</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>9</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Train</td>
            <td>41</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>10</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Ship</td>
            <td>131</td>
            <td><a href="#Update">Update</a></td>
          </tr>
           <tr>
            <td>11</td>
            <td>Rumah - Kantor DPRD</td>
            <td>Plane</td>
            <td>4</td>
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
            <label for="fname">Transportaion Mode</label>
            <input type="text" id="mTransportation" name="ModeTransportation" placeholder="Transportation...">            
            <label for="fname">Time(Minutes)</label>
            <input type="text" id="Time" name="Time" placeholder="Time(Minutes)...">            
            <input type="submit" value="Add">
            </form>
        </div> 
</body>
</html>
