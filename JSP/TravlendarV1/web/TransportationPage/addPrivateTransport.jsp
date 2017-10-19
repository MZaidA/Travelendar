<%@page import="DAO.TransportPrivateDAO"%>
<jsp:useBean id="tpriv" class="Model.PrivateTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="tpriv"/>

<%--<jsp:getProperty property="locationName" name="loc"></jsp:getProperty>--%>
<%
    int status = TransportPrivateDAO.save(tpriv);
    if(status!=0) 
    {
        response.sendRedirect("index.jsp");
    }
    else
    {
        response.sendRedirect("index.jsp");
    }
    
%>