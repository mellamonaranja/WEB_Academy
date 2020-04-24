<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <jsp:useBean id="cnt" class="com.javabeans.Counter" scope="application"></jsp:useBean>
<%
int count=0;
session=request.getSession();
session.setMaxInactiveInterval(1);
/* 1sec */
String first=(String)session.getAttribute("checkFirst");

if(first!=null){
	count=cnt.getCount();
}else{
	cnt.setCount();
	count=cnt.getCount();
	session.setAttribute("checkFirst", "first");
}
out.println("visitors is "+count);
%>
