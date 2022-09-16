package com.nt.service;

import com.nt.beans.Employee;

public class EmployeeMgmtService {
	
	public  void  generateSalaryDetails(Employee emp) {
		//  calcaulate  gross,net salaries  (b.logic)
		 double salary=emp.getSalary();
		 double grossSalary=salary+ salary * 0.3f;
		 double  netSalary=grossSalary-(grossSalary*0.2f);
		 //set  gross,netsalaries to  Employee class obj
		 emp.setGrossSalary(grossSalary);
		 emp.setNetSalary(netSalary);
		 
	}

}
