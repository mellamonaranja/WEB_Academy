<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.text.DecimalFormat" %>
    <<jsp:useBean id="cnt" scope="application" class="com.javabeans.Counter"></jsp:useBean>
<%
	int count=0;
	session=request.getSession();
	session.setMaxInactiveInterval(1);
	String first=(String)session.getAttribute("checkFirst");
	
	if(first!=null){
		count=cnt.getCount();
	}else{
		cnt.setCount();
		count=cnt.getCount();
		
		session.setAttribute("checkFirst", "first");
	}
	out.println("visitors ");
	
	DecimalFormat format=new DecimalFormat("0000");
	String scount=null;
	String pos = null;
	
	scount=format.format(count);
	
	for(int i=0;i<4;i++){
		pos=scount.substring(i, i+1);
		pos="n"+pos+".png";
		out.println("<img src=img/"+pos+" width=20 />");
	}
%>