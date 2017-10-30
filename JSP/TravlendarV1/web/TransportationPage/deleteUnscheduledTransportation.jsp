<%-- 
    Document   : deletePrivateTransportation
    Created on : Oct 19, 2017, 12:32:15 PM
    Author     : ZARS
--%>

<%@page import="DAO.TransportPrivateDAO"%>
<jsp:useBean id="tpriv" class="Model.PrivateTransportation"></jsp:useBean>
    
<jsp:setProperty property="*" name="tpriv"/>

<%
  int status = TransportPrivateDAO.delete(tpriv);
  if(status!=0) 
  {
      response.sendRedirect("index.jsp");
  }
  else 
  {
      response.sendRedirect("index.jsp");
  }
%>
