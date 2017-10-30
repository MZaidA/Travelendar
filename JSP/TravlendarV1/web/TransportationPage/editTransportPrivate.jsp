<%-- 
    Document   : editTransportPrivate
    Created on : Oct 20, 2017, 7:40:05 PM
    Author     : GL 553 VD380 i7
--%>

<%@page import="DAO.TransportPrivateDAO"%>
<jsp:useBean id="tpriv" class="Model.PrivateTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="tpriv"/>
<%--<jsp:getProperty name="loc" property="kode"></jsp:getProperty>
<jsp:getProperty name="loc" property="nama"></jsp:getProperty>--%>
<% 
    int i = TransportPrivateDAO.update(tpriv);
    if(i!=0)
    {
        response.sendRedirect("index.jsp");
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>
