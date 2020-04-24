package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello_Get extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doGet");
		
		PrintWriter out=response.getWriter();
		String name=request.getParameter("name");
		
		out.println("<html>");
		out.println("<head>");
		
		out.println("</head>");
		out.println("<body>");
		out.println("Welcome, "+name);
		out.println("<h1>Hello_Get</h1>");
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
	

}
