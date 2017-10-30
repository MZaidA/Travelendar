<%-- 
    Document   : deleteEstimatedTimePrivate
    Created on : Oct 21, 2017, 10:06:44 PM
    Author     : Cecep Sutisna
--%>

<%@page import="DAO.UnscheduledTravelingTableDAO"%>
<jsp:useBean id="priv" class="Model.UnscheduledTravelingTable"></jsp:useBean>
<jsp:setProperty property="*" name="priv"/>

<%
    int status = UnscheduledTravelingTableDAO.delete(priv);
    if(status != 0) 
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
