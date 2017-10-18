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
        <%@ include file = "../navbarManage.jsp" %>
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Private')" id="defaultOpen">Private</button>
            <button class="tablinks" onclick="openTab(event, 'Public')">Public</button>
        </div>
    <div id="Private" class="tabcontent">
    <div id="mainPanel" style="overflow-x:hidden;">
        <h1>MANAGE ESTIMATED TIME PRIVATE</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Start Location</th> 
            <th>Finish Location</th>
            <th>Transportaion Mode</th>
            <th>Time(Minutes)</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Walk</td>
            <td>788</td>
            <td><a href="updateEstimatedTimePrivate.jsp" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>2</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Bicycle</td>
            <td>263</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>3</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Motorcycle</td>
            <td>66</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>4</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Car</td>
            <td>79</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
        </table>
    </div>
        <br>
        <br>
    <div class="form">
	    	<form action="/action_page.php">
    		<label for="LocationA">Location A</label>	
                <select class="minimal" id="Locationa" name="Locationa">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="LocationB">Location B</label>	
            <select class="minimal" id="Locationb" name="Locationb">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="fname">Transportaion Mode</label>
            <select class="minimal">
                <option>Walk</option>
                <option>Bicycle</option>
                <option>Motorcycle</option>
                <option>Car</option>
            </select>
            <label for="fname">Time(Minutes)</label>
            <input type="text" id="Time" name="Time" placeholder="Time(Minutes)...">            
            <input type="submit">
            </form>
        </div>
    </div>
    <div id="Public" class="tabcontent">
        <div id="mainPanel" style="overflow-x:hidden;">
        <h1>MANAGE ESTIMATED TIME PUBLIC</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Start Location</th> 
            <th>Finish Location</th>
            <th>Transportation Mode</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Bus</td>
            <td>07:00</td>
            <td>10:00</td>
            <td><a href="updateEstimatedTimePublic.jsp" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>2</td>
            <td>Rumah</td>
            <td>Kantor DPRD</td>
            <td>Train</td>
            <td>07:00</td>
            <td>10:00</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
        </table>
    </div>
        <br>
        <br>
    <div class="form">
	    	<form action="/action_page.php">
    		<label for="LocationA">Location A</label>	
                <select class="minimal" id="Locationa" name="Locationa">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="LocationB">Location B</label>	
            <select class="minimal" id="Locationb" name="Locationb">
              <option value="rumah">Rumah</option>
              <option value="kantor_dprd">Kantor DPRD</option>
              <option value="bandara_banka">Bandara Banka</option>
              <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
              <option value="jakarta">Jakarta</option>
              <option value="tangerang">Tangerang</option>
            </select>
            <label for="fname">Transportaion Mode</label>
            <select class="minimal">
                <option>Bus</option>
                <option>Train</option>
                <option>Ship</option>
                <option>Plane</option>
            </select>
            <label for="fname">Departure Time</label>
            <input type="text" id="Dtime" name="departureTime" placeholder="departureTime...">
            <label for="fname">Arrival Time</label>
            <input type="text" id="Atime" name="arrivalTime" placeholder="arrivalTime...">
            <input type="submit">
            </form>
        </div>
    </div>
<script>
function openTab(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}
document.getElementById("defaultOpen").click();

</script>
</body>
</html>
