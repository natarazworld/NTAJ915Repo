<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="message"  value="how are u"  scope="request"/>

 <c:if test="${!empty  param.uname}">
    <c:out value="${message }"/>  Mr/Miss/Mrs  <c:out value="${param.uname }"/> <br>
      ${message }  Mr/Miss/Mrs  ${param.uname }
 </c:if>
 
 <br> from  core2.jsp  <br>