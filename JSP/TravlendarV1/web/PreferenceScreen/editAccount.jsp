<%-- 
    Document   : editAccount
    Created on : Dec 10, 2017, 5:01:57 PM
    Author     : ZARS
--%>

<%@page import="DAO.AccountDAO"%>
<jsp:useBean id="acc" class="Model1.Account"></jsp:useBean>
<jsp:setProperty property="*" name="acc"/>
<!DOCTYPE html>
<% 
    int status =AccountDAO.update(acc);
    if(status != 0)
    {
        response.sendRedirect("index.jsp");
    }
        else 
        {
            response.sendRedirect("index.jsp");
        }
%>
