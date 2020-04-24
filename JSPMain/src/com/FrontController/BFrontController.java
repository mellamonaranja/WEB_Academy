package com.FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Command.BCommand;

/**
 * Servlet implementation class BFrontController
 */
//@WebServlet("*.do")
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		
		request.setCharacterEncoding("EUC-KR");
		String viewPage=null;
		BCommand command=null;
		
		String uri=request.getRequestURI();
		System.out.println("uri : "+uri);
		
		String[]arrURI=uri.split("/");
		String comm=arrURI[arrURI.length-1];
		System.out.println("comm : "+comm);
		
		if(comm.equals("list.do")) {
			command=new BListCommand();
			command.execute(request, response);
			viewPage="List.jsp";
		}else if(comm.equals("Write_view.do")) {
			viewPage="Write_view.jsp";
		}else if(comm.equals("Write.do")) {
			command=new BWriteCommand();
			command.execute(request, response);
		}else if(comm.contentEquals("delete.do")) {
			command=new BDeleteCommand();
			command.execute(request, response);
		}
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

}
