package com.nt.servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletContext;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/testurl")
public class TestDataServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 //create scoped attributes
		   req.setAttribute("attr1","val1");  //request scope
		  HttpSession ses=req.getSession(); 
		  ses.setAttribute("attr2", "val2"); // session scoe
		  ServletContext sc=getServletContext();
		  sc.setAttribute("attr3", "val3");  // application scope
		  
		  //forward the request to jsp page
		   RequestDispatcher rd=req.getRequestDispatcher("/el_scoped_data.jsp");
		   rd.forward(req, res);
		
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		doGet(req, res);
	}

}
