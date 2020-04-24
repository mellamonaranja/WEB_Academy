<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.net.URLEncoder" %>
    <%
    Cookie[] cookies=request.getCookies();
    
    if(cookies!=null && cookies.length>0){
    	for(int i=0;i<cookies.length;i++){
    		if(cookies[i].getName().equals("iscookiename")){
    			Cookie cookie = new Cookie("iscookiename", URLEncoder.encode("modified"));
    			
    			cookie.setMaxAge(30*60);
    			response.addCookie(cookie);
    		}
    		if(cookies[i].getName().equals("cookiename")){
    			Cookie cookie = new Cookie("cookiename", URLEncoder.encode("cookie_modified"));
    			
    			cookie.setMaxAge(30*60);
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

</body>
</html>