//CustomerFileDownloadServlet.java
package com.nt.servlet;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;

@WebServlet("/customer_download")
public class CustomerFileDownloadServlet extends HttpServlet{
	private static final String  CUST_PHOTO_PATH="SELECT  PHOTO_PATH FROM UPLOAD_CUSTOMER_TAB WHERE CNO=?";
	private static final String  CUST_RESUME_PATH="SELECT  RESUME_PATH FROM UPLOAD_CUSTOMER_TAB WHERE CNO=?";
	
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
	     
		//read  addtional request param value
		   int  cno=0;
		   String query=null;
		   if(req.getParameter("p_no")!=null) {
			   cno=Integer.parseInt(req.getParameter("p_no"));
			   query=CUST_PHOTO_PATH;
		   }
		   else {
			   cno=Integer.parseInt(req.getParameter("r_no"));
			   query=CUST_RESUME_PATH;
			   }
		   ///get Resume or PHOTO PATH from db table column as String value
		   try {
			   Class.forName("oracle.jdbc.driver.OracleDriver");
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
		   try(Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system", "manager");
				   PreparedStatement ps=con.prepareStatement(query);	   ){
			   //set query param value
			   ps.setInt(1, cno);
			    //execute the Query
			 try( ResultSet rs=ps.executeQuery()){
			   String path=null;
			   if(rs.next()) {
				   path=rs.getString(1);
			   }
			   //create java.io.File class obj pointing to the file
			   File file=new File(path);
			   // get the length of the file and make it as the response content length
			   long length=file.length();
			   res.setContentLengthLong(length);
			   //get the MIME of the file and make it as response content  type
			   ServletContext sc=getServletContext();
			   String mimeType=sc.getMimeType(file.getName());
			   mimeType=(mimeType!=null)?mimeType:"application/octet-stream";  //terinary operator
			   res.setContentType(mimeType);
			try(
				//create InputStream pointing to  file
			   InputStream is=new FileInputStream(file);
			   //create output stream pointing to   response obj
			   OutputStream os=res.getOutputStream();  //byte stream
					PrintWriter pw=res.getWriter();
					){
			   //make the browser to display the recieved response content as downloadable file
			    res.setHeader("Content-Disposition","attachment;fileName="+file.getName());
			    //copy the content of file to be download to  response obj
			    IOUtils.copy(is, os);
			}//try3
			 }//try2
		   }//try1
		   catch(SQLException se) {
			   se.printStackTrace();
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
	}//doGet(-,-)
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
         doGet(req,res);
	}//doPost(-,-)

}//class
