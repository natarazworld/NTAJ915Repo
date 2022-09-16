//CustomerReportServlet.java
package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customer_report")
public class CustomerReportServlet extends HttpServlet {
	private static final String GET_ALL_CUSTOMERS="SELECT *  FROM UPLOAD_CUSTOMER_TAB";

	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 //get PrintWriter 
		PrintWriter pw=res.getWriter();
		//set response content type
		res.setContentType("text/html");
		//writer jdbc code to get all customer records
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		try(Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","manager");
				 PreparedStatement ps=con.prepareStatement(GET_ALL_CUSTOMERS)	;
				ResultSet rs=ps.executeQuery()	){
			//process the ResultSEt object
			pw.println("<table border='1' align='center' bgcolor='cyan'>");
			pw.println("<tr><th>cno</th><th>cname</th><th>cadd</th><th>photo</th><th>resume</th></tr>");
			while(rs.next()) {
				pw.println("<tr><td>"+rs.getInt(1)+"</td>");
				pw.println("<td>"+rs.getString(2)+"</td>");
				pw.println("<td>"+rs.getString(3)+"</td>");
				pw.println("<td><a href='customer_download?p_no="+rs.getInt(1)+"'>download</td>");
				pw.println("<td><a href='customer_download?r_no="+rs.getInt(1)+"'>download</td> </tr>");
			}//while
			pw.println("</table>");
		}//try
		catch(SQLException se) {
			se.printStackTrace();
		}
		catch(Exception e) {
			e.printStackTrace();
		}

	}//doGet(-,-)

	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		doGet(req, res);
	}

}
