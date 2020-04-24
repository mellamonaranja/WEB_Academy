package com.parameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class STUDENT
 */
@WebServlet("/STUDENT")
public class STUDENT extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public STUDENT() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet()");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost()");
		
		response.setContentType("text/html;charset=EUC-KR");
			

		String name=request.getParameter("name");
		int Korean=Integer.parseInt(request.getParameter("Korean"));
		int English=Integer.parseInt(request.getParameter("English"));
		
		PrintWriter out=response.getWriter();
		out.println("<html>");
		out.println("<head><title>information</title></head>");
		out.println("<body>");
		out.println("name is "+name);
		out.println("Korean is "+Korean);
		out.println("English is "+English);
		out.println("Total score is "+(Korean+English));
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}

}
