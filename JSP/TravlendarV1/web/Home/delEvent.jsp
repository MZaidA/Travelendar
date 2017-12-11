<%-- 
    Document   : delEvent
    Created on : Dec 11, 2017, 9:38:43 AM
    Author     : Nino
--%>

<%@page import="DAO.EventDAO"%>
<jsp:useBean id="del" class="Model.Event"></jsp:useBean>
<jsp:setProperty property="*" name="del"/>

<%
    int status = EventDAO.delete(del);
    if(status!=0) 
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
