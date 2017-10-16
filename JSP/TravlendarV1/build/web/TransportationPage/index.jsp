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
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Private')" id="defaultOpen">Private</button>
            <button class="tablinks" onclick="openTab(event, 'Public')">Public</button>
        </div>
    <div id="Private" class="tabcontent">
         <div id="mainPanel" style="overflow-x:hidden;">        
            <h1>MANAGE TRANSPORTATION PRIVATE</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Code</th>
            <th>Transportaion Mode</th>
            <th>Action</th>
          </tr>
          <tr>
            <td>1</td>
            <td>P00001</td>
            <td>Walk</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>2</td>
            <td>P00002</td>
            <td>Bicycle</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
          <tr>
            <td>3</td>
            <td>P00003</td>
            <td>Motorcycle</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>4</td>
            <td>P00004</td>
            <td>Car</td>
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
                    
                    <input type="submit">
                    </form>
            </div>
        </div>
        <div id="Public" class="tabcontent">
            <div id="mainPanel" style="overflow-x:hidden;">        
            <h1>MANAGE TRANSPORTATION PUBLIC</h1>
        <table>
          <tr>
            <th>No</th>
            <th>Code</th>
            <th>Transportaion Mode</th>
            <th>Action</th>
          </tr>
           <tr>
            <td>1</td>
            <td>U00001</td>
            <td>Angkot</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>2</td>
            <td>U00002</td>
            <td>Ojek</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>3</td>
            <td>U00003</td>
            <td>Taksi</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>4</td>
            <td>U00004</td>
            <td>Bus</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>5</td>
            <td>U00005</td>
            <td>Train</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>6</td>
            <td>U00006</td>
            <td>Ship</td>
            <td><a href="#Update" class="button1">Update</a> <a href="#Delete" class="button1">Delete</a></td>
          </tr>
           <tr>
            <td>7</td>
            <td>U00007</td>
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
