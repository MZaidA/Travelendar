<%-- 
    Document   : editLocation
    Created on : Oct 19, 2017, 7:15:38 PM
    Author     : ZARS
--%>

<%@page import="DAO.LocationDAO"%>
<jsp:useBean id="loc" class="Model.Location"></jsp:useBean>
<jsp:setProperty property="*" name="loc"></jsp:setProperty>

<%--<jsp:getProperty name="loc" property="kode"></jsp:getProperty>
<jsp:getProperty name="loc" property="nama"></jsp:getProperty>--%>
<% 
    int i = LocationDAO.update(loc);
    if(i!=0)
    {
        response.sendRedirect("index.jsp");
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>
