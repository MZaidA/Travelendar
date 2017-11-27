<%-- 
    Document   : deletePrivateTransportation
    Created on : Oct 19, 2017, 12:32:15 PM
    Author     : ZARS
--%>

<%@page import="DAO.UnscheduledTransportationDAO"%>
<jsp:useBean id="uns" class="Model.UnscheduledTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="uns"/>

<%
  int status = UnscheduledTransportationDAO.delete(uns);
  if(status != 0) 
  {
      response.sendRedirect("index.jsp");
  }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>
