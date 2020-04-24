<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    Cookie[] cookies= request.getCookies();
    
    if(cookies!=null && cookies.length>0){
    	for(int i=0;i<cookies.length;i++){
    		if(cookies[i].getName().equals("iscookiename")){
    			Cookie cookie = new Cookie("iscookiename", "");
    			cookie.setMaxAge(0);
    			response.addCookie(cookie);
    		}
    		if(cookies[i].getName().equals("cookiename")){
    			Cookie cookie = new Cookie("cookiename",  "");
    			cookie.setMaxAge(0);
    			response.addCookie(cookie);
    		}
    	}
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	cookie has been deleted
</body>
</html>