package com.nt.service;

import java.util.List;

import org.eclipse.jdt.internal.compiler.apt.model.IElementInfo;

import com.nt.dao.EmployeeDAOImpl;
import com.nt.dao.IEmployeeDAO;
import com.nt.model.Employee;

public class EmployeeMgmtServiceImpl implements IEmployeeMgmtService {
	
	private IEmployeeDAO  empDAO;
	public EmployeeMgmtServiceImpl() {
		empDAO=new  EmployeeDAOImpl();
	}

	@Override
	public List<Employee> searchEmpsByDesg(String desg) throws Exception{
		//use  DAO
		List<Employee>  list=empDAO.getAllEmpsByDesg(desg);
		// calculate gross ,netsalaries (b.logic)
		list.forEach(emp->{
			emp.setGrossSalary(emp.getSalary()+emp.getSalary()*0.4f);
			emp.setNetSalary(emp.getGrossSalary()-(emp.getGrossSalary()*0.2f));
		});
		return list;
	}

}
