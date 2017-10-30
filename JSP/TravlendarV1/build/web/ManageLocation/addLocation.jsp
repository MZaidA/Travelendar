<%@page import="DAO.LocationDAO"%>
<jsp:useBean id="loc" class="Model.Location"></jsp:useBean>
<jsp:setProperty property="*" name="loc"/>

<%
    int status = LocationDAO.save(loc);
    if(status != 0) 
    {
        response.sendRedirect("index.jsp");
    }
%>