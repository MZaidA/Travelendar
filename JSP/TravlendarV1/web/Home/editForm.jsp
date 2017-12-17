<!DOCTYPE html>  
<html>  
    <head>  
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
        <title>Edit Form</title>  
    </head>  
<body>  
<%@page import="DAO.EventDAO, Model.Event"%>  
  
    <%  
        String id=request.getParameter("id");  
        Event event=EventDAO.get(Integer.parseInt(id));  
    %>  
<%--  
<h1>Edit Form</h1>  
<form action="editEvent.jsp" method="post">  
<input type="hidden" name="id" value="<%=event.getEvent_id()%>"/>  
    <table>  
        
        Pagawean si Farrel

    </table>  
</form>  
--%>  
</body>  
</html>  