package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.nt.factory.ConnectionFactory;
import com.nt.model.Employee;

public class EmployeeDAOImpl implements IEmployeeDAO {
	private static final String  GET_EMPS_BY_DESG="SELECT EMPNO,ENAME,JOB,SAL,DEPTNO FROM EMP WHERE JOB=?";
	private static final String DS_JNDI_NAME="java:/comp/env/DsJndi";

	@Override
	public List<Employee> getAllEmpsByDesg(String desg)throws Exception {
		 List<Employee> list=null;
		//get Pooled JDBC Connection
		try(Connection con=ConnectionFactory.getPooledConnection(DS_JNDI_NAME);
				PreparedStatement ps=con.prepareStatement(GET_EMPS_BY_DESG);
				){
			  if(ps!=null) {
				   //set Query param value
				    ps.setString(1, desg);
				    //execute Query
				    try(ResultSet rs=ps.executeQuery()){
				    	//copy ResultSEt object records ot ArrayList
				    	list=new ArrayList<Employee>();
				    	while(rs.next()) {
				    		 //copy each record of RS to Model class(Java bean) obj
				    		Employee e=new Employee();
				    		e.setEmpno(rs.getInt(1));
				    		e.setEname(rs.getString(2));
				    		e.setJob(rs.getString(3));
				    		e.setSalary(rs.getDouble(4));
				    		e.setDeptno(rs.getInt(5));
				    		//add Employee class obj to List collection
				    		list.add(e);
				    		
				    	}//while
				    }//try2
			  }//if
			
		}//try1
		catch(SQLException se) {
			se.printStackTrace();
			throw se;  //Exception rethrowing
			}
		catch(Exception e) {
			e.printStackTrace();
			throw e;  //exception rethrowing
		}
		
		return  list;
	}//method
	

}//class
