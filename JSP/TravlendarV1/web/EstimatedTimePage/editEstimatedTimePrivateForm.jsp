<%-- 
    Document   : editEstimatedTime
    Created on : Oct 18, 2017, 11:32:58 PM
    Author     : GL 553 VD380 i7
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
        <%@ include file = "../navbarManage.jsp" %>
        <div id="mainPanel" style="overflow-x:hidden;">
            <h1>UPDATE ESTIMATED TIME PRIVATE</h1>
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
    </body>
</html>
