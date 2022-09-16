

<%-- <%@page import="java.util.*,com.nt.model.*"%>

<%
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
          
          <bR><br>
     <a href="JavaScript:doPrint()">print</a>
       <script language="JavaScript">
           function doPrint(){
        	   frames.focus();  //frames is built-in object.. it gains focus on the current web page
        	   frames.print();  // prints current web page
           }
       </script> --%>
       
       <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
       
       <c:choose>
          <c:when test="${!empty empsList }">
              <h1 style="color:blue;text-align:center"> Employees belonging to ${param.desg}  </h1>
       
                <table  border="1" align="center" bgcolor="cyan" >
                   <tr bgcolor="yellow"><th>empno</th> <th>emp name</th> <th>job</th><th> deptno </th> <th>salary</th> <th>gross salary</th> <th>net salary</th> </tr>
              <c:forEach var="emp" items="${empsList}">
                 <tr>
                   <td>${emp.empno } </td>
                    <td>${emp.ename } </td>
                    <td>${emp.job } </td>
                     <td>${emp.deptno } </td>
                      <td>${emp.salary } </td>
                       <td>${emp.grossSalary } </td>
                        <td>${emp.netSalary } </td>
                 </tr>
              </c:forEach>
              </table>
          </c:when>
          <c:otherwise>
                      <h1 style="color:red;text-align:center">No Employees found </h1>
          </c:otherwise>
       
       </c:choose>
       
                <bR><br>
     <a href="JavaScript:doPrint()">print</a>
       <script language="JavaScript">
           function doPrint(){
        	   frames.focus();  //frames is built-in object.. it gains focus on the current web page
        	   frames.print();  // prints current web page
           }
       </script>