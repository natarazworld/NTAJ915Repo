//MainControllerServlet.java
package com.nt.controller;

import java.io.IOException;
import java.util.List;

import com.nt.model.Employee;
import com.nt.service.EmployeeMgmtServiceImpl;
import com.nt.service.IEmployeeMgmtService;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/controller")
public class MainControllerServlet extends HttpServlet {
	 private  IEmployeeMgmtService  empService;
       
	@Override
	public void init() throws ServletException {
	    empService=new EmployeeMgmtServiceImpl();
	}
    

	
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 //read form data
		String  desg=req.getParameter("desg");
		String checkAction=req.getParameter("source");
		try {
		//use service
		List<Employee> list=empService.searchEmpsByDesg(desg);
		//keep  result in the request scope
		req.setAttribute("empsList", list);
		// forward the request destination jsp pages
		 String target=null;
		 if(checkAction.equalsIgnoreCase("HTML"))
			 target="html_screen.jsp";
		 else
			 target="excel_screen.jsp";
		 RequestDispatcher rd=req.getRequestDispatcher(target);
		 rd.forward(req, res);
		
		}//try
		catch(Exception e) {
			e.printStackTrace();
			RequestDispatcher rd1=req.getRequestDispatcher("/error.jsp");
			 rd1.forward(req, res);
		}
		
	}

	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req,res);
	}

}
