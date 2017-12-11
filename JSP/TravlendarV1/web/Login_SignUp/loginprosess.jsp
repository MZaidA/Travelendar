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
    response.sendRedirect("../Home");
    }  
else  
    {  
    out.print("Sorry, email or password error");
      
    
      
    }    
%>