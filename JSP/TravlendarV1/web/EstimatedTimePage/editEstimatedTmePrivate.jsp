<%-- 
    Document   : editEstimatedTimePrivate
    Created on : Oct 21, 2017, 10:07:33 PM
    Author     : Cecep Sutisna
--%>

<%@page import="DAO.PrivateTransportationTravelingDAO"%>
<jsp:useBean id="priv" class="Model.PrivateTransportationTraveling"></jsp:useBean>
<jsp:setProperty property="*" name="priv"/>

<% 
    int status = PrivateTransportationTravelingDAO.update(priv);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
