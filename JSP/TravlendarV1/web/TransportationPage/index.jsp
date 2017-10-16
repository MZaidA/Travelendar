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
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Travlendar</title>
    </head>
    <body>
	<div class="wrapper">
        <li><strong>Admin</strong>TRAVELENDAR</li> 	
    </div>
	<%@ include file = "../navbarManage.jsp" %>
    <div id="mainPanel" style="overflow-x:hidden;">
        <h1>MANAGE TRANSPORTATION</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Code</th>
            <th>Transportaion Mode</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>P01</td>
            <td>Walk</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>2</td>
            <td>P02</td>
            <td>Bicycle</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>3</td>
            <td>P03</td>
            <td>Motorcycle</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>4</td>
            <td>P04</td>
            <td>Car</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>5</td>
            <td>U01</td>
            <td>Angkot</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>6</td>
            <td>U02</td>
            <td>Ojek</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>7</td>
            <td>U03</td>
            <td>Taksi</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>8</td>
            <td>U04</td>
            <td>Bus</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>9</td>
            <td>U05</td>
            <td>Train</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>10</td>
            <td>U06</td>
            <td>Ship</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>11</td>
            <td>U07</td>
            <td>Plan</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
        </table>
    </div>
        <br>
        <br>
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
