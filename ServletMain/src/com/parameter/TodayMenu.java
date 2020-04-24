package com.parameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TodayMenu extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//super.doPost(req, resp);
		
		System.out.println("doPost()");
		
		response.setContentType("text/html;charset-EUC-KR");
		request.setCharacterEncoding("EUC-KR");
		
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>TodayMenu</title></head>");
		out.println("<body>");
		
		System.out.println("<div align=\"center\">");
		
		String[] values=request.getParameterValues("Lunch");
		for(int i=0;i<values.length;i++) {
			out.println(values[i]);
		}
		
		out.println("<br>");
		out.println("<br>");
		out.println("</div>");
		out.println("</body>");
		out.println("</html>");
		out.close();
		
	}
	
}
