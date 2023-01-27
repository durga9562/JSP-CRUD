<%@page import="com.java.bean.UserDAO"%>
<jsp:useBean id="u1" class="com.java.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u1" />
<%
int s = UserDAO.save(u1);
if (s>=0) {
	response.sendRedirect("AddUserSuccess.jsp");
} else {
	response.sendRedirect("errorPage.jsp");
}
%>