package com.nt.factory;

import java.sql.Connection;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class ConnectionFactory {
	
	public    static   Connection  getPooledConnection(String jndiName)throws Exception{
	
	    Connection con=null;
		 try {
		 InitialContext ic=new InitialContext();
		 DataSource ds=(DataSource)ic.lookup(jndiName);
		 con=ds.getConnection();
		 return con;
		 }
		 catch(Exception e) {
			 e.printStackTrace();
			 throw e;  // Exception rethrowing concept is used here
		 }
		
	}

}
