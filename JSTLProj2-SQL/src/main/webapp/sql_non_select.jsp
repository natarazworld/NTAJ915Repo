<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="sql"%>


<!--  establish the connection with DB s/w -->
<sql:setDataSource var="ds"  driver="oracle.jdbc.driver.OracleDriver"
                                                           url="jdbc:oracle:thin:@localhost:1521:xe"
                                                           user="system"
                                                           password="manager"/>
        
        <!-- execute the non-select SQL query -->                                                   
  <sql:update  dataSource="${ds}" sql="UPDATE EMP SET SAL=SAL+? WHERE  JOB=? " var="count">
  
    <!--  set the param values  -->
    <sql:param value="1000"/>
    <sql:param>CLERK </sql:param>
    </sql:update>
    <!-- display the results -->
    <b> no.of records that are effected :: ${count }</b>
   
  