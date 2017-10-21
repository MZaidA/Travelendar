<%-- 
    Document   : index
    Created on : Oct 15, 2017, 5:34:32 PM
    Author     : Cecep Sutisna
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.TransportPrivateDAO, Model.PrivateTransportation, java.util.*"%>
<%@page import="DAO.PublicTransportationDAO, Model.PublicTransportation, java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="../Assets/css/manageStyle.css"/>
        <title>Manage Transportation - Travlendar</title>
        <%
            List<PrivateTransportation> transports = TransportPrivateDAO.getAll();
            request.setAttribute("transports", transports);
        %>
        <%
            List<PublicTransportation> publicTransportations = PublicTransportationDAO.getAll();
            request.setAttribute("publicTransportations", publicTransportations);
        %>
    </head>
    <body>
        <div class="wrapper">
            <li><strong>Admin</strong>TRAVELENDAR</li> 	
        </div>
	<%@ include file="../navbarManage.jsp"%>
        <div class="tab">
            <button class="tablinks" onclick="openTab(event, 'Private')" id="defaultOpen">Private</button>
            <button class="tablinks" onclick="openTab(event, 'Public')">Public</button>
        </div>
        
        <div id="Private" class="tabcontent">
            <div id="mainPanel" style="overflow-x:hidden;">        
                <h1>MANAGE PRIVATE TRANSPORTATION</h1>
                <table>
                    <tr>
                        <th>Index</th>
                        <th>Identifier</th>
                        <th>Transportation Type</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${transports}" var="item" varStatus="loop">
                        <tr>
                            <td> ${loop.index+1}</td>
                            <td> ${item.privateId} </td>
                            <td> ${item.privateType}</td>
                            <td>
                                <a href="editTransportPrivateForm.jsp?privateId=${item.privateId}" class="button1">Update</a>
                                <a href="deletePrivateTransportation.jsp?privateId=${item.privateId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <br>
            <br>
            <div class="form">
                <form action="addPrivateTransport.jsp">
                    <label for="fname">Transportation Type</label>
                    <input type="text" id="mTransportation" name="privateType" placeholder="Transportation...">          
                    <input type="submit" name="submit" value="Add">
                </form>
            </div>
        </div>
        
        <div id="Public" class="tabcontent">
            <div id="mainPanel" style="overflow-x:hidden;">        
                <h1>MANAGE PUBLIC TRANSPORTATION</h1>
                <table>
                    <tr>
                        <th>Index</th>
                        <th>Identifier</th>
                        <th>Transportation Type</th>
                        <th>Transportation Name</th>
                        <th>Action</th>
                    </tr>
                    <c:forEach items="${publicTransportations}" var="item" varStatus="loop">
                        <tr>
                            <td> ${loop.index+1}</td>
                            <td> ${item.publicId} </td>
                            <td> ${item.publicType}</td>
                            <td> ${item.publicName}</td>
                            <td>
                                <a href="updatePublicTransportationForm.jsp?publicId=${item.publicId}" class="button1">Update</a>
                                <a href="deletePublicTransportation.jsp?publicId=${item.publicId}" class="button1">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
            <br>
            <br>
            <div class="form">
                <form action="addPublicTransportation.jsp">
                    <label for="fPublicType">Transportation Type</label>
                    <input type="text" id="mPublicType" name="publicType" placeholder="Transportation Type...">
                    <label for="fPublicName">Transportation Name</label>
                    <input type="text" id="mPublicName" name="publicName" placeholder="Transportation Name...">
                    <input type="submit" name="submit" value="Add">
                </form>
            </div>
        </div>
        
        <script>
            function openTab(evt, cityName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for(i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for(i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(cityName).style.display = "block";
                evt.currentTarget.className += " active";
            }
            document.getElementById("defaultOpen").click();
        </script>
    </body>
</html>
