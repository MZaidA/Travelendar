<%-- 
    Document   : loginprosess
    Created on : Dec 11, 2017, 10:22:20 PM
    Author     : GL 553 VD380 i7
--%>

<%@page import="DAO.UserDAO"%>
<jsp:useBean id="ps" class="Model.User"></jsp:useBean>
<jsp:setProperty property="*" name="ps"/>

<%
 boolean status = UserDAO.validasi(ps);
if(status){
    String username=request.getParameter("username"); 
    session.setAttribute("username",username); 
    response.sendRedirect("Home");
    }  
else  
    {  
    %>
    <script> alert("USERNAME ATAU PASSWORD SALAH")</script>
    <jsp:include page="index.jsp" />
    <%
    }    
%>