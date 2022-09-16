//CustomerRegistrationServlet.java
package com.nt.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Vector;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import javazoom.upload.MultipartFormDataRequest;
import javazoom.upload.UploadBean;
import javazoom.upload.UploadParameters;

@WebServlet("/customerurl")
public class CustomerRegistrationServlet extends   HttpServlet{
	 private static final String  INSERT_SQL_QUERY="INSERT INTO  UPLOAD_CUSTOMER_TAB VALUES(CUST_SEQ.NEXTVAL,?,?,?,?)";
	 
	
	 @Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// Get PrintWriter
		PrintWriter pw=res.getWriter();
		//set response content type
		res.setContentType("text/html");
		 Connection con=null;
		 PreparedStatement ps=null;
		try {
		 // Create Special  request of Javazoom api
		MultipartFormDataRequest nreq=new MultipartFormDataRequest(req);
		//read form data
		String name=nreq.getParameter("cname");
		String addrs=nreq.getParameter("cadd");
		//perform file uploading
		UploadBean bean=new UploadBean();
		bean.setFolderstore("e:\\store");
		bean.setOverwrite(false);
		//bean.setFilesizelimit(50*1024*1024);
		bean.setBlacklist("*.zip,*.exe");
		bean.store(nreq);
		//get  the  name of uploaded files
		Vector<UploadParameters>  vector=bean.getHistory();
		String  filename1=vector.get(0).getFilename();
		String  filename2=vector.get(1).getFilename();
		pw.println("<br><b> The uploaded file names ::"+filename1+"....."+filename2+"</b>");
		//write jdbc code
		  //Load jdbc driver class
		 Class.forName("oracle.jdbc.driver.OracleDriver");
		 //establish the  connection
		 con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system","manager");
		 //create PreparedStatement object
		  ps=con.prepareStatement(INSERT_SQL_QUERY);
		 //set values to the query params
		 ps.setString(1, name);
		 ps.setString(2, addrs);
		 ps.setString(3,"E:\\store\\"+filename1);
		 ps.setString(4,"E:\\store\\"+filename2);
		 //execute the query
		 int result=ps.executeUpdate();
		 //process the Result
		  if(result==0)
			  pw.println("<h1 style='color:red;text-align:center'> Registration Failed </h1>");
		  else
			  pw.println("<h1 style='color:red;text-align:center'> Registration Succeded </h1>");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				if(ps!=null)
					ps.close();
			}
			catch(Exception e) {
				e.printStackTrace();
			}
			try {
				if(con!=null)
					con.close();
			}
			catch(Exception e) {
				pw.println("<b> Problems in file uploaading </b>");
				e.printStackTrace();
			}
		}
		// add  home hyperlink
		pw.println("<br><a href='index.html'>home </a>");
		//close stream
		pw.close();
	}//doGet(-,-)
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		 doGet(req,res);
	}//doPost(-,-)

}//class
