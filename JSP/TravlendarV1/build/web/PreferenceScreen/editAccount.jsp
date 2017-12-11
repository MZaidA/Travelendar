<%-- 
    Document   : editAccount
    Created on : Dec 10, 2017, 5:01:57 PM
    Author     : ZARS
--%>

<%@page import="DAO.UserDAO"%>
<jsp:useBean id="acc" class="Model1.User"></jsp:useBean>
<jsp:setProperty property="*" name="acc"/>
<!DOCTYPE html>
<% 
    int status =UserDAO.update(acc);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
