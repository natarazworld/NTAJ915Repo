<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>


<!--  establish the connection with DB s/w -->
<sql:setDataSource var="ds"  driver="oracle.jdbc.driver.OracleDriver"
                                                           url="jdbc:oracle:thin:@localhost:1521:xe"
                                                           user="system"
                                                           password="manager"/>
                                                           
  <!--  send and execute select SQL Query in Db s/w -->
  <sql:query dataSource="${ds}"  sql="SELECT * FROM EMP"  var="rs"/>
  
  <!-- Process the ResultSet -->
  <c:forEach  var="emp"  items="${rs.rows}">
      ${emp.empno } ,  ${emp.ename } , ${emp.job } , ${emp.sal} <br>
  
  </c:forEach>