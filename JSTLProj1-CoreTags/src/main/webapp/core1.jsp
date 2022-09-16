<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var="message"  value="how are u"  scope="request"/>

  Data is ::  <c:out value="${message}" /> <br>
  Data is :: ${message } <br>
  Data is  :: ${requestScope.message }  <br>
  
  <c:remove var="message" scope="request"/>
  
  <br>
    Data is ::  <c:out value="${message}" /> <br>
  Data is :: ${message } <br>
  Data is  :: ${requestScope.message }  <br>
