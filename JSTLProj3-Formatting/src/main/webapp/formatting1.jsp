<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<%@page isELIgnored="false"  pageEncoding="UTF-8" %>
<!-- Activating the Locale -->
<fmt:setLocale value="en_US"/>

<!-- Specifying the base propertier file -->
<fmt:setBundle  basename="com/nt/commons/msg"/>

<!--  display the message -->
 <fmt:message key="wish.message"  var="fmsg"/>
  <b> The wish message is :: ${fmsg}</b>
  
  <!-- Format the date and time -->
<jsp:useBean id="dt"  class="java.util.Date"/>

 <fmt:formatDate value="${dt}"  var="fdt"  type="both"  dateStyle="full" timeStyle="medium"/>
 <br>
  <b> Formatted date and time is :: ${fdt}</b>
  
  
  <!-- Format numbers -->
  <fmt:formatNumber  value="1000000111" var="fnumber" type="number"/>
   <br>
    <b> Formatted number  is :: ${fnumber}</b>
    
     <!-- Format currency -->
  <fmt:formatNumber  value="1000000111.00" var="fnumber1" type="currency"/>
   <br>
    <b> Formatted currency  is :: ${fnumber1}</b>
    
    
    