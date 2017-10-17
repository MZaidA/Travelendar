<%-- 
    Document   : deleteLocation
    Created on : Oct 17, 2017, 2:07:20 PM
    Author     : afadh
--%>

<%@page import="DAO.LocationDAO, DAO.EventDAO"%>
<jsp:useBean id="loc" class="Model.Location"></jsp:useBean>
    
<jsp:setProperty property="*" name="loc"/>

<%
  int status = LocationDAO.delete(loc);
  if(status!=0) {
      response.sendRedirect("index.jsp");
  }
  else {
      
  }
%>