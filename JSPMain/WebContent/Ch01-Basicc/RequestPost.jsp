<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String receiveData=request.getParameter("data");
out.print("Received Data is "+receiveData);
%>