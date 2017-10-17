<%@page import="DAO.TransportPrivateDAO"%>
<jsp:useBean id="loc" class="Model.PrivateTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="loc"/>

<%--<jsp:getProperty property="locationName" name="loc"></jsp:getProperty>--%>
<%
    int status = TransportPrivateDAO.save(loc);
    if(status!=0) {
        response.sendRedirect("index.jsp");
    }
    
%>