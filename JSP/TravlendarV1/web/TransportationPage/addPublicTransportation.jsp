<%-- 
    Document   : addPublicTransportation
    Created on : Oct 19, 2017, 6:01:53 PM
    Author     : Nino
--%>

<%@page import="DAO.PublicTransportationDAO"%>
<jsp:useBean id="pub" class="Model.PublicTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="pub"/>
<%
    int status = PublicTransportationDAO.save(pub);
    if(status != 0) {
        response.sendRedirect("index.jsp");
    }
        else {
            response.sendRedirect("index.jsp");
        }
%>
