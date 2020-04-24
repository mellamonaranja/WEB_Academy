package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		response.setContentType("text/html; charset-EUC-KR");
		
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head>");
		
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>FITST SERV-<br>LET</h1>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

}
