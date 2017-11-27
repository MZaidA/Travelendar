<%@page import="DAO.UnscheduledTransportationDAO"%>
<jsp:useBean id="uns" class="Model.UnscheduledTransportation"></jsp:useBean>
<jsp:setProperty property="*" name="uns"/>

<%
    int status = UnscheduledTransportationDAO.save(uns);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else
        {
            response.sendRedirect("index.jsp");
        }
%>