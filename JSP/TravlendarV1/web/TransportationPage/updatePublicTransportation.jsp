<%-- 
    Document   : editPublicTransportation
    Created on : Oct 22, 2017, 12:38:56 AM
    Author     : Nino
--%>

<%@page import="DAO.PublicTransportationDAO"%>
<jsp:useBean id="pub" class="Model.PublicTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="pub"/>
<% 
    int status = PublicTransportationDAO.update(pub);
    if(status != 0) {
        response.sendRedirect("index.jsp");
    }
        else {
            response.sendRedirect("index.jsp");
        }
%>
