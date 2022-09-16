<%@page import="com.nt.beans.StudentBean" %>

<!-- create or Locate Java bean class obj -->
<jsp:useBean id="st" class="com.nt.beans.StudentBean" scope="session"/>

<!-- read and display bean property values -->
  <b> sno= <jsp:getProperty name="st" property="sno"/></b> <br>
  <b> sname= <jsp:getProperty name="st" property="sname"/></b> <br>
  <b> sadd= <jsp:getProperty name="st" property="sadd"/></b> <br>
  <b> avg= <jsp:getProperty name="st" property="avg"/></b> <br>