<%@page import="com.java.bean.UserDAO"%>
<jsp:useBean id="u" class="com.java.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
 
<%
int i=UserDAO.update(u);
response.sendRedirect("viewUsers.jsp");
%>