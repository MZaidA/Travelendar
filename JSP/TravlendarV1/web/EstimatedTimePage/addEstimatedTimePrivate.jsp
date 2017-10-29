<%-- 
    Document   : addEstimatedTimePrivate
    Created on : Oct 21, 2017, 10:07:11 PM
    Author     : Cecep Sutisna
--%>

<%@page import="DAO.PrivateTransportationTravelingDAO"%>
<jsp:useBean id="priv" class="Model.PrivateTransportationTraveling"></jsp:useBean>
<jsp:setProperty property="*" name="priv"/>

<%
    int status = PrivateTransportationTravelingDAO.save(priv);
    if(status != 0) 
    {
        response.sendRedirect("index.jsp");
    }
        else
        {
            response.sendRedirect("index.jsp");
        }
%>
