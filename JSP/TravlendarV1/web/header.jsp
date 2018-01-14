<%-- 
    Document   : header
    Created on : Dec 7, 2017, 10:27:38 PM
    Author     : GL 553 VD380 i7
--%>
<%   
  
String username=(String)session.getAttribute("username");  

  
%> 
<div class="header">
<img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;">
    <a href="../index.jsp"><button class="buttonLogOut">LogOut</button></a>
    <strong class="username"><%out.print(username);%></strong>
<div class="wrapper"><img src="../Assets/icon/Logo KelompokB1v2.png" width="145" height="50" style="margin-left:30px;margin-top: 10px;"></div>
</div>
