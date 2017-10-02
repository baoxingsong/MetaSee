<%@ page contentType="text/html;charset=GB2312" %>
<%@ page import="file.ReadFile" %>
<html><body bgcolor=cyan><Font size=3>
<jsp:useBean id="file" class="file.ReadFile" scope="page" />
<%
	file.setFileDir("3ed1e885-7c4f-4632-a70d-cfb5aff827f5");
	String content=file.getReadContent();
	out.print(content);
%>