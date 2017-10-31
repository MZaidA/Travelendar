<%-- 
    Document   : editEstimatedTimePrivate
    Created on : Oct 21, 2017, 10:07:33 PM
    Author     : Cecep Sutisna
--%>

<%@page import="DAO.UnscheduledTravelingTableDAO"%>
<jsp:useBean id="unst" class="Model.UnscheduledTravelingTable"></jsp:useBean>
<jsp:setProperty property="*" name="unst"/>

<% 
    int status = UnscheduledTravelingTableDAO.update(unst);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
