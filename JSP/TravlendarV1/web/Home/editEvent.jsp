<%-- 
    Document   : editEvent
    Created on : Dec 14, 2017, 6:45:47 AM
    Author     : Toshiba
--%>

<%@page import="DAO.EventDAO"%>
<jsp:useBean id="edit" class="Model.Event"></jsp:useBean>
<jsp:setProperty property="*" name="edit"/>

<% 
    int i = EventDAO.update(edit);
    if(i!=0)
    {
        response.sendRedirect("index.jsp");
    }
    else 
    {
        response.sendRedirect("index.jsp");
    }
%>
