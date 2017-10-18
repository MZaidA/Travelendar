<%-- 
    Document   : editDistance
    Created on : Oct 18, 2017, 11:19:35 PM
    Author     : GL 553 VD380 i7
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
            <h1>UPDATE DISTANCE</h1>
            <br><br>
            <div class="form">
                <form action="/action_page.php">
                <label for="startLoc">Start Location</label>	
                <select id="Locationa" name="Locationa">
                    <option value="rumah">Rumah</option>
                    <option value="kantor_dprd">Kantor DPRD</option>
                    <option value="bandara_banka">Bandara Banka</option>
                    <option value="bandara_halim">Bandara Halim Perdanakusuma</option>
                    <option value="jakarta">Jakarta</option>
                    <option value="tangerang">Tangerang</option>
                </select>
                <label for="finishLoc">Finish Location</label>	
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
                    <input type="submit">
                </form>
            </div>
        </div>
</body>
</html>

