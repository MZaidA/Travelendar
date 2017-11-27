<%-- 
    Document   : addScheduledTransportation
    Created on : Oct 19, 2017, 6:01:53 PM
    Author     : Nino
--%>

<%@page import="DAO.ScheduledTransportationDAO"%>
<jsp:useBean id="sch" class="Model.ScheduledTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="sch"/>

<%
    int status = ScheduledTransportationDAO.save(sch);
    if(status != 0) {
        response.sendRedirect("index.jsp");
    }
        else {
            response.sendRedirect("index.jsp");
        }
%>
