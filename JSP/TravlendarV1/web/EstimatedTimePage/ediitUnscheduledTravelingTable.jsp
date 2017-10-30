<%-- 
    Document   : editEstimatedTimePrivate
    Created on : Oct 21, 2017, 10:07:33 PM
    Author     : Cecep Sutisna
--%>

<%@page import="DAO.UnscheduledTravelingTableDAO"%>
<jsp:useBean id="priv" class="Model.UnscheduledTravelingTable"></jsp:useBean>
<jsp:setProperty property="*" name="priv"/>

<% 
    int status = UnscheduledTravelingTableDAO.update(priv);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
