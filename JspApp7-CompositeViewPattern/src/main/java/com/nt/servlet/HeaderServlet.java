package com.nt.servlet;

import java.io.IOException;
//HeaderServlet.java
import java.io.PrintWriter;

//HeaderServlet.java

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/headurl")
public class HeaderServlet extends HttpServlet {

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		PrintWriter pw=null;
		//general settings
		pw=res.getWriter();
		res.setContentType("text/html");
		//header logic
		pw.println("<marquee><h1 style='color:red'> THE TIMES OF INDIA </marquee> </h1>");
		
	// do not close stream
		  //pw.close();
		
		
	
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
          doGet(req,res);	
	}

}
