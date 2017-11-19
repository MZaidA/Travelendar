<%-- 
    Document   : save-direction
    Created on : Nov 18, 2017, 9:08:02 PM
    Author     : adita
--%>

<%@page import="DAO.EventDAO"%>
<jsp:useBean id="event" class="Model.Event"></jsp:useBean>
<jsp:setProperty property="*" name="event"/>

<%
    int status = EventDAO.save(event);
    if(status != 0) 
    {
        System.out.println(event.isAvoidTolls());
        response.sendRedirect("direction.html");
    }
        else 
        {
            System.out.println("gagal save");
        }
%>
