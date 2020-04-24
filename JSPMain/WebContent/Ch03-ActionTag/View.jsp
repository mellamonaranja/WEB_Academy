<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% 

	request.setCharacterEncoding("EUC-KR");
	String code=request.getParameter("code");
	String viewPageURL=null;
	if(code.equals("A")){
		viewPageURL="A.jsp";
	}else if(code.equals("B")){
		viewPageURL="B.jsp";
	}else if(code.equals("C")){
		viewPageURL="C.jsp";
	}else if(code.equals("D")){
		viewPageURL="D.jsp";
	}else if(code.equals("E")){
		viewPageURL="E.jsp";
	}
%>
	<jsp:forward page="<%=viewPageURL %>">
		<jsp:saram name="option" value="result"/>
	</jsp:forward>