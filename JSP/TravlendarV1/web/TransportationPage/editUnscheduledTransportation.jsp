<%-- 
    Document   : editTransportPrivate
    Created on : Oct 20, 2017, 7:40:05 PM
    Author     : GL 553 VD380 i7
--%>

<%@page import="DAO.UnscheduledTransportationDAO"%>
<jsp:useBean id="uns" class="Model.UnscheduledTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="uns"/>

<% 
    int i = UnscheduledTransportationDAO.update(uns);
    if(i != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
