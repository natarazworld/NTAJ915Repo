<%@page import="java.sql.*"  %>

<%
       //read init param values
        String driverClass=config.getInitParameter("driverClass");
       String  url=config.getInitParameter("jdbcUrl");
       String dbuser=config.getInitParameter("dbuser");
       String dbpwd=config.getInitParameter("dbpwd");
      //Load  JDBC driver class
         Class.forName(driverClass);
      //Establish the Connection
      Connection con=DriverManager.getConnection(url, dbuser, dbpwd);
      //create PeparedStatement objs 
       PreparedStatement ps1=con.prepareStatement("INSERT INTO STUDENT VALUES(SNO_SEQ.NEXTVAL,?,?,?)");
       PreparedStatement ps2=con.prepareStatement("SELECT * FROM STUDENT");
       
   //read s1 request param value
    String s1Param=request.getParameter("s1");
    if(s1Param.equalsIgnoreCase("register")){   // for submit button
    	//read form data
    	 String name=request.getParameter("sname");
    	String  addrs=request.getParameter("sadd");
    	float  avg=Float.parseFloat(request.getParameter("avg"));
    	//set values to Query params
    	 ps1.setString(1,name);
    	 ps1.setString(2,addrs);
    	 ps1.setFloat(3,avg);
    	 //execute the Query
    	 int count=ps1.executeUpdate();
    	 //process the result
    	  if(count==0){ %>
    	      <h1 style="color:red;text-align:center">Record not inserted </h1>
    	   <%}
    	      else{ %>
    	    	  <h1 style="color:red;text-align:center">Record  inserted </h1>
    	  <%   }//else
    
    	
    } //if
    else{      	//for  hyperlink
    	   //execute   the SELECT Query
    	   ResultSet rs=ps2.executeQuery(); %>
    		
    	   <table  border="1" bgcolor="cyan"  align="center">
    	    <tr> <th> sno</th><th>sname</th><th>sadd</th><th>avg</th> </tr>
    	   <% 
    		//process the ResultSet 
    		while(rs.next()){  %>
    		 
    		      <tr>
    		         <td><%=rs.getInt(1) %>  </td>
    		         <td><%=rs.getString(2) %>  </td>
    		           <td><%=rs.getString(3) %>  </td>
    		         <td><%=rs.getFloat(4) %>  </td>
    		      </tr>
    		      
    		      <%} //while 
    		      %>
    		  </table>
  	
  <%  
          rs.close();
         }//else
           ps1.close();
          ps2.close();
           con.close();
        %>
 <a href="student_register.html">home</a>