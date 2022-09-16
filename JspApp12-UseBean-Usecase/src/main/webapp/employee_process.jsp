<%@ page import="com.nt.service.EmployeeMgmtService,com.nt.beans.Employee"  %>

<!-- create/Locate Employee class obj (Java bean ) -->
<jsp:useBean id="emp"  class="com.nt.beans.Employee" scope="request"/>

<!-- write form data to java bean class obj(Employee) -->
<jsp:setProperty name="emp"  property="*"/>


<!-- create /Locate Service class obj -->
<jsp:useBean id="service"  class="com.nt.service.EmployeeMgmtService" scope="application"/>

<!-- invoke the b.method on service class obj -->
<jsp:scriptlet>
    service.generateSalaryDetails(emp);
</jsp:scriptlet>

<!-- Display employee details -->

<h3> The Employee details are::</h3>
    <b> emp name :: <jsp:getProperty name="emp" property="ename"/></b> <br>
    <b> emp job :: <jsp:getProperty name="emp" property="job"/></b>  <br>
    <b> emp salary :: <jsp:getProperty name="emp" property="salary"/></b>  <br>
    <b> emp gross salary :: <jsp:getProperty name="emp" property="grossSalary"/></b>  <br>
     <b> emp net salary :: <jsp:getProperty name="emp" property="netSalary"/></b>  <br>
    
    
 
 