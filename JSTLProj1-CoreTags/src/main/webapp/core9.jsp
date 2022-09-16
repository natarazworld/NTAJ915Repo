<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<b>  start of core9.jsp</b> <br>

 <c:url var="destUrl"   value="http://www.google.com/search"  scope="request"/>
 
 <c:redirect  url="${destUrl }"/>


<br>
 <b> end of core9.jsp</b>