<%@page import="com.java.bean.UserDAO"%>
<jsp:useBean id="u" class="com.java.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u" />

<%
UserDAO.delete(u);
response.sendRedirect("viewUsers.jsp");
%>