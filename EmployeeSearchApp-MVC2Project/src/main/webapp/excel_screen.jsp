

<%@page import="java.util.*,com.nt.model.*"%>

<%
            response.setContentType("application/vnd.ms-excel");
           response.addHeader("Content-Disposition", "attachment;fileName=empDetails.xls");
               //read req attribute vlaue
         List<Employee> list=(List<Employee>)request.getAttribute("empsList");

     if(list!=null && list.size()>0){  %>
       <h1 style="color:blue;text-align:center"> Employees belonging to <%=request.getParameter("desg") %>  </h1>
       
        <table  border="1" align="center" bgcolor="cyan" >
           <tr bgcolor="yellow"><th>empno</th> <th>emp name</th> <th>job</th><th> deptno </th> <th>salary</th> <th>gross salary</th> <th>net salary</th> </tr>
        <%
            for(Employee emp:list){  %>
            	<tr>
            	   <td><%=emp.getEmpno() %> </td>
            	   <td><%=emp.getEname() %> </td>
            	   <td><%=emp.getJob() %> </td>
            	   <td><%=emp.getDeptno() %> </td>
            	   <td><%=emp.getSalary()%> </td>
            	   <td><%=emp.getGrossSalary() %> </td>
            	   <td><%=emp.getNetSalary() %> </td>
            	</tr>
        <%    }
        %>
        </table>
   <% 	 
     } //if
     else{  %>
    	 <h1 style="color:red;text-align:center">No Employees found </h1>
  <%   }
          %>
          
    