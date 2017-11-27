<%-- 
    Document   : editScheduledTransportation
    Created on : Oct 22, 2017, 12:38:56 AM
    Author     : Nino
--%>

<%@page import="DAO.ScheduledTransportationDAO"%>
<jsp:useBean id="sch" class="Model.ScheduledTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="sch"/>

<% 
    int status = ScheduledTransportationDAO.update(sch);
    if(status != 0) {
        response.sendRedirect("index.jsp");
    }
        else {
            response.sendRedirect("index.jsp");
        }
%>
