<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:34:32 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/TransportationPage.css">
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
    <div id="mainPanel" style="overflow-x:auto;">
        <h1>MANAGE TRANSPORTATION</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Code</th>
            <th>Transportaion Mode</th>
          </tr>
          <tr>
            <td>1</td>
            <td>P01</td>
            <td>Walk</td>
          </tr>
          <tr>
            <td>2</td>
            <td>P02</td>
            <td>Bicycle</td>
          </tr>
          <tr>
            <td>3</td>
            <td>P03</td>
            <td>Motorcycle</td>
          </tr>
           <tr>
            <td>4</td>
            <td>P04</td>
            <td>Car</td>
          </tr>
           <tr>
            <td>5</td>
            <td>U01</td>
            <td>Angkot</td>
          </tr>
           <tr>
            <td>6</td>
            <td>U02</td>
            <td>Ojek</td>
          </tr>
           <tr>
            <td>7</td>
            <td>U03</td>
            <td>Taksi</td>
          </tr>
           <tr>
            <td>8</td>
            <td>U04</td>
            <td>Bus</td>
          </tr>
           <tr>
            <td>9</td>
            <td>U05</td>
            <td>Train</td>
          </tr>
           <tr>
            <td>10</td>
            <td>U06</td>
            <td>Ship</td>
          </tr>
           <tr>
            <td>11</td>
            <td>U07</td>
            <td>Plan</td>
          </tr>
        </table>
    </div>
    <div class="form">
            <form action="/action_page.php">
            <label for="fname">Transportaion Mode</label>
            <input type="text" id="mTransportation" name="ModeTransportation" placeholder="Transportation...">
                <label for="fname">Code Transpotation</label>
            <input type="text" id="cTransportation" name="CodeTransportation" placeholder="Code...">
            
            <input type="submit" value="Add">
            </form>
        </div> 
</body>
</html>
