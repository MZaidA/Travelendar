<%-- 
    Document   : addUser
    Created on : Dec 11, 2017, 9:26:39 AM
    Author     : Salam ????
--%>

<%@page import="DAO.UserDAO"%>
<jsp:useBean id="ps" class="Model.User"></jsp:useBean>
<jsp:setProperty property="*" name="ps"/>
<!DOCTYPE html>
<% 
    int status =UserDAO.createUser(ps);
    if(status != 0)
    {
        String username=request.getParameter("username"); 
        session.setAttribute("username",username);
        response.sendRedirect("Home");
    }
    else 
    {%>
        <script> alert("REGISTRASI GAGAL")</script>
        <jsp:include page="index.jsp" />
        <%
    }
%>