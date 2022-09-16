
<%@page import="com.nt.beans.StudentBean" %>

<!-- create or Locate Java bean class obj -->
<jsp:useBean id="st" class="com.nt.beans.StudentBean" scope="session"/>

<%-- <!-- set values to bean properties -->
  <jsp:setProperty property="sno" name="st" value="1001"/>
  <jsp:setProperty property="sname" name="st" value="raja"/>
  <jsp:setProperty property="sadd" name="st" value="hyd"/>
  <jsp:setProperty property="avg" name="st" value="89.67"/> --%>
  
 <%--  <!-- setting the req param values as the Java bean class obj property values -->
  <jsp:setProperty property="sno" name="st"  param="stno"/>
  <jsp:setProperty property="sname" name="st" param="stname"/>
  <jsp:setProperty property="sadd" name="st" param="staddrs"/>
  <jsp:setProperty property="avg" name="st" param="stavg"/>
   --%>
   
   <!-- if req param nams and bean property names are matching  then we can use property="*" to assign 
     all request param values to bean property values
    -->
    <jsp:setProperty property="*" name="st"  />
  <h1 style="color:red;text-align:center"> Values are set to Bean properties  </h1>
  



